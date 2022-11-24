#!/bin/bash
#
# wget, iconv commands must be installed before to launch this script.
while read -r line; do
  link=`echo ${line}|awk '{print $1}'`
  file=`echo ${line}|awk '{print $2}'`
  wget -q -O - ${link} | iconv -f cp949 -t utf8 > ${file}
done <<EOF
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002642986&fileDetailSn=1 national_pension_202210.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002628453&fileDetailSn=1 national_pension_202209.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002609439&fileDetailSn=1 national_pension_202208.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002590223&fileDetailSn=1 national_pension_202207.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002572552&fileDetailSn=1 national_pension_202206.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002556708&fileDetailSn=1 national_pension_202205.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002536568&fileDetailSn=1 national_pension_202204.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002527955&fileDetailSn=1 national_pension_202203.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002518377&fileDetailSn=1 national_pension_202202.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002512856&fileDetailSn=1 national_pension_202201.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002494556&fileDetailSn=1 national_pension_202112.csv
https://www.data.go.kr/cmm/cmm/fileDownload.do?atchFileId=FILE_000000002484364&fileDetailSn=1 national_pension_202111.csv
EOF


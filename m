Return-Path: <clang-built-linux+bncBCD2R7VW2UPBBSNC4D6QKGQEH27WIYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F09D2BB3FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 19:56:10 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q8sf4502346otk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 10:56:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605898569; cv=pass;
        d=google.com; s=arc-20160816;
        b=yzMspQUvUM12kWPLYhmijqfErxsLYYd3JE1dvFhm273u+VtFTcGvS0GDHzmAuA9Pn8
         V9Chj3jV7fbeyygncjr5e4sxJyFaqmMcmzH1m6HaythlCnNYogAn7b+QMq1VH/jUI7/4
         KpjGqlKs7EXQIhNMtoW86QVJDjOUjmvLn2KZoUF7xh+oksEik9hbi8Es2wNbw2xnaypg
         xkTYJA1Wx28F3yv4yevAfbfPS3lHItcUs5/pJj5sPReK1hAbVcAaAddMcbYgqjlWm1PV
         +rYoJ5hP/XP5jwhkhDNHp9kfQ6xQZqa8DuwcewlfZA9h5nI6J7ixgeGBZGOxqvZKsy5a
         4Hug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vEsiHYKRgo7d8C44JbKRmT3laR+GnHQb+qA9JU6uA3c=;
        b=P6tCf0TS8VDbQ2nYffbW58m2OfdDw82yoLM9ftG7TnvIu83F4opiDBgHtLOfU8d2J9
         2jm1/b8ucSJNxzOoi+/dwXVTyZCmZ/GOxqYYk/dwE6ICFMXO4h2cNDuNESb/m4Sgezja
         Q7+NYQoQpT941mxs//+yt6qQlmVi3WsFilx8ev4vACEBiXvhBMQmaUP9Qcaa5gXBOfSC
         ZtFUf+f23Yn8YM5xFS1nzWdLBGwv5Cs9Q3jvC0N2BnzkrT87++3txGlQ0OUHNMyRKJ86
         sXD6ttYTkYIudVrZCD0X8JSvBUNtxWO2BIipB6QdNgDeE7aWl00FPyO9CRMLEF8BqyM0
         D1WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=X9SfiFe5;
       spf=pass (google.com: domain of james.smart@broadcom.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=james.smart@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vEsiHYKRgo7d8C44JbKRmT3laR+GnHQb+qA9JU6uA3c=;
        b=NfwRUchbuDBcIcqSNDyNHlNazGKno5iuB03/0xn66wh6Hm1HBvwQ5hVZtVTCo7wpaT
         vhk/Ib1O0sP2TomUUjPup+jpM8spNEUqm5qFlQrHfoSaCK1u6Q7r9WtT3BTErYy9NE1A
         hbGg3z1RlboZONtutw1Jmx9EBhqhrzSzcm00V6W7MBxdNXiDEPPEIzJFAhJvE5mXb3bo
         EZUCH6oLfwUeAS9kltTLEeY6VpNJw1lDEfwUiAZ8Nf/SapYTdkI5xDBPeVM84SCVoe5E
         SRZuizG8PO/eNz+Xq2bISDoVrVBm4xtAx3W68mp/MwP/KIqGqTNBnz/RmgW4y/wOQiJG
         6TCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vEsiHYKRgo7d8C44JbKRmT3laR+GnHQb+qA9JU6uA3c=;
        b=XqQNtGW+q4HxqpE0mbNWSFxF288Bfq9l1ayB96P4nTHJLzInE9QYg02b0OzsSZLO1s
         lbreK6dtBlRRmLYLnflkAbOndLdqrG10vSbU46Xlxp2etsvzdg+ddWCNph+J6xsnHmBx
         +h2/uocVpW0bkAq6UwcMvcDUJgh6MgCILHwpYKh84ALoEkNh7DDMWS3BWvnFZd0qXNa3
         3aQcfvsGolglxNXyDCQ/swHf2CfEaOcBIQvVs7jm/uM/rfeEggIGDabYWSYUsEgKN8xL
         LoHSv6zhZ+5irkqA/xzmhr+F1r/T+WWKDzUluqKBptxOiwDWdPyZiz2ykOKcljBOm+ng
         s3sw==
X-Gm-Message-State: AOAM531/LDiiuEikFdIozCYKOuUuIVdZFN1Rl7jPWSsGWE0r/3BKYeJD
	j0VG8n04z8es7KTC6HGYYuU=
X-Google-Smtp-Source: ABdhPJxJLRl7G2zQSCKTnMvPZbtRcJrPirp34vp5OV8Ox4v/509r2d8OXl0w/B+HA5Kex3sG2m2bQQ==
X-Received: by 2002:a4a:3b83:: with SMTP id s125mr14938882oos.82.1605898569463;
        Fri, 20 Nov 2020 10:56:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:e102:: with SMTP id y2ls1788949oig.4.gmail; Fri, 20 Nov
 2020 10:56:09 -0800 (PST)
X-Received: by 2002:aca:bfc2:: with SMTP id p185mr7552667oif.60.1605898569047;
        Fri, 20 Nov 2020 10:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605898569; cv=none;
        d=google.com; s=arc-20160816;
        b=xj9S0wJrNck0OX22AOP+pUQOIDL9EcVMqkTby1/imP3xtBegH0CiaNjZDu+bsi0R2o
         lXe7ovTtql7PviNwC5FTDoEBjjDzoOKE8KcsCDh+fsBMparyE+OE/nU0Daagj6QGQ2v0
         JaQZpTsrPw0dk0s5zu9c3KZjkdOBsxuWeOWI2WRh8PURACq9zMXh4bgicxw10cqY8Szu
         wcyEltnNER4MW+fWnvZsGE6ISg6tgQdceVh+XQuDVr5cx3+hhAXZ1e0djJMeYfGdrcSQ
         n80vACPDoeVesmc3JHX+gyCp6EP8RbpVebQNjiLAcp653c7/Rqiy6kbExzutxbXBLmjJ
         DgFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=+WhF5kV8BGDBrzJDqlUbrxhAeE8zvju1HrsB59HPn3Y=;
        b=WqSVMOFMe6ODu5lo2Oe5bIHrTwzyHPPhBsjFqbvAZozaY4rhB+Rq5MHy4HDpWiCfy/
         DMsSRS2M2idxfw11mxPMzeMbjOn+VRhQrH2hKKyb0q+0sxANqyT1peOj6oF/8vLyBDnV
         JOB6juyyADUmJ2kopbbbj/8m1gw21jGCMrFaUWmsq7ehiqffMw0wjKF8DFO0rHEzXNPu
         2vgAX28Qa6H4gI6gqVwNrXggehSgnxdUK2AuZqGJX0NfGOUFEidD2TuCPiGY+ez0b6bl
         iVcCJIPOj1VAXMim0skBE924aPSaaBV7w+ousAPvFhmskQzKjZopWsodo4pQmPE1R4Nu
         5f9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=X9SfiFe5;
       spf=pass (google.com: domain of james.smart@broadcom.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=james.smart@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id f16si406910otc.0.2020.11.20.10.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:56:08 -0800 (PST)
Received-SPF: pass (google.com: domain of james.smart@broadcom.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id 62so8048854pgg.12
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 10:56:08 -0800 (PST)
X-Received: by 2002:a17:90a:1f86:: with SMTP id x6mr6787381pja.92.1605898568142;
        Fri, 20 Nov 2020 10:56:08 -0800 (PST)
Received: from [10.69.69.102] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 84sm4566388pfu.53.2020.11.20.10.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:56:06 -0800 (PST)
Subject: Re: [linux-next:master 5896/7280]
 drivers/scsi/lpfc/lpfc_nvmet.c:3340:1: warning: no previous prototype for
 function 'lpfc_nvmet_prep_abort_wqe'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>
References: <202011201855.c4QQSuWu-lkp@intel.com>
From: "'James Smart' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <e98069a2-b522-f342-0fd6-b90449f68a78@broadcom.com>
Date: Fri, 20 Nov 2020 10:56:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <202011201855.c4QQSuWu-lkp@intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b9b9b205b48e6575"
X-Original-Sender: james.smart@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=X9SfiFe5;       spf=pass
 (google.com: domain of james.smart@broadcom.com designates
 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=james.smart@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: James Smart <james.smart@broadcom.com>
Reply-To: James Smart <james.smart@broadcom.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--000000000000b9b9b205b48e6575
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 11/20/2020 2:26 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it master
> head:   95065cb54210eba86bed10cb2118041524d54573
> commit: db7531d2b3775c662466e4eeda774986472c6d18 [5896/7280] scsi: lpfc: =
Convert abort handling to SLI-3 and SLI-4 handlers
> config: x86_64-randconfig-a011-20201120 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ded=
927cf80ac519f9f9c4664fef08787f7c537d)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-nex=
t.git/commit/?id=3Ddb7531d2b3775c662466e4eeda774986472c6d18
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/k=
ernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout db7531d2b3775c662466e4eeda774986472c6d18
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/scsi/lpfc/lpfc_nvmet.c:3340:1: warning: no previous prototype f=
or function 'lpfc_nvmet_prep_abort_wqe' [-Wmissing-prototypes]
>     lpfc_nvmet_prep_abort_wqe(struct lpfc_iocbq *pwqeq, u16 xritag, u8 op=
t)
>     ^
>     drivers/scsi/lpfc/lpfc_nvmet.c:3339:1: note: declare 'static' if the =
function is not intended to be used outside of this translation unit
>     void
>     ^
>     static
>     1 warning generated.
>
> vim +/lpfc_nvmet_prep_abort_wqe +3340 drivers/scsi/lpfc/lpfc_nvmet.c
>
Fixed by=C2=A0 185d17e11e7f=C2=A0 scsi: lpfc: Fix missing prototype for=20
lpfc_nvmet_prep_abort_wqe()

checked in yesterday....

-- james

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e98069a2-b522-f342-0fd6-b90449f68a78%40broadcom.com.

--000000000000b9b9b205b48e6575
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
AanDaJF6fE9TEzbfn5AWgVgHkbqS3VY3Gq05xkLhRugDQ60IGwT29K1B+wGfcujKSaalhQIDAQAB
o4IBzzCCAcswDgYDVR0PAQH/BAQDAgWgMIGeBggrBgEFBQcBAQSBkTCBjjBNBggrBgEFBQcwAoZB
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NwZXJzb25hbHNpZ24yc2hhMmcz
b2NzcC5jcnQwPQYIKwYBBQUHMAGGMWh0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9nc3BlcnNv
bmFsc2lnbjJzaGEyZzMwTQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0
dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwRAYDVR0fBD0w
OzA5oDegNYYzaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc3BlcnNvbmFsc2lnbjJzaGEyZzMu
Y3JsMCMGA1UdEQQcMBqBGGphbWVzLnNtYXJ0QGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEF
BQcDBDAfBgNVHSMEGDAWgBRpcoJiMWeVRIV3kYDEBDZJnXsLYTAdBgNVHQ4EFgQUUXCHNA1n5KXj
CXL1nHkJ8oKX5wYwDQYJKoZIhvcNAQELBQADggEBAGQDKmIdULu06w+bE15XZJOwlarihiP2PHos
/4bNU3NRgy/tCQbTpJJr3L7LU9ldcPam9qQsErGZKmb5ypUjVdmS5n5M7KN42mnfLs/p7+lOOY5q
ZwPZfsjYiUuaCWDGMvVpuBgJtdADOE1v24vgyyLZjtCbvSUzsgKKda3/Z/iwLFCRrIogixS1L6Vg
2JU2wwirL0Sy5S1DREQmTMAuHL+M9Qwbl+uh/AprkVqaSYuvUzWFwBVgafOl2XgGdn8r6ubxSZhX
9SybOi1fAXGcISX8GzOd85ygu/3dFqvMyCBpNke4vdweIll52KZIMyWji3y2PKJYfgqO+bxo7BAa
ROYxggJvMIICawIBATBtMF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNh
MTMwMQYDVQQDEypHbG9iYWxTaWduIFBlcnNvbmFsU2lnbiAyIENBIC0gU0hBMjU2IC0gRzMCDH5i
rbJ+nCPBux48wjANBglghkgBZQMEAgEFAKCB1DAvBgkqhkiG9w0BCQQxIgQgIC6iIbC6dTjW4mb3
M2IM0rMZ346uQZ6nRmVAGcBKz6YwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjAxMTIwMTg1NjA4WjBpBgkqhkiG9w0BCQ8xXDBaMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBCjALBgkqhkiG9w0BAQcw
CwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAJtVgmGvZv59IT739G557yO/Hi920uSC86oh
vBcFw76F2PfmW1SeTnOmhe9MfUZ7l/KfBbGhHV0UFnjL0ocfgqt88BS1wANIyvTfvNO8zQRRFIoI
MNkhL67AE/PJ3GVOOEOVOXuNjTHZF4FxDhpkeGxX6voVW0btu/PMsketPTNP/dsPMY56JcrFJiHc
WE6ZTlku6wifk3KzWb0S2nuRoUsfE4wlq0hx2QkNhcWiG9p+dRdrKjAACwifSqKBoTW4yA2tCI2b
U5VhkKv9hzW6gXsDLEV4vXZQ02ueIqd4OdiflNm+7TgIf781LwRupyegdtvTJyiwBGRQxpavbbTV
dzg=
--000000000000b9b9b205b48e6575--

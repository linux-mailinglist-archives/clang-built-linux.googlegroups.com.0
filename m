Return-Path: <clang-built-linux+bncBAABBL5NYOAAMGQEZAYB3HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3D7304F2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 03:57:52 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id f16sf548460pgh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 18:57:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611716271; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZObnkvA2qMWE8HUtxiSgnVHWP2Kx1th3o41x6nQ6NDtcSdOkmSURe1zUF9LEDRTqBl
         tzutF9RQcPL/1CGAHqnYYxgUk7tqaDGCRdTwqiyPomvlwtZ5oc13nptuMrydtV++KddW
         +wONrVxWMEvQrrzEwJWqOMhctrnUSqMD1eAISuI8D5VUDr8l/TGEwxHKGYHIn1mLbNhN
         eO84oZHwV6Dj/Q9/6cSpm6H+Jfqs0gW4kTXXHPn3PlJvseWItWAuYcESpYLCgPEE+GIN
         qWHFXKnY7vL2x+AHRbQTyiFffMlaAP+gGqQ6xLNUJENtbF7YLI1HTajApxxU6QHoGFEF
         POQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :to:subject:sender:dkim-signature;
        bh=BRfLH5MyF4gQ5ZBHoSSav4TuuhV5Y51OAM0GiR4jyU0=;
        b=z6pCPEd5qb3NaERCaThgM/SM7H58VlgdC9LwKQTDtcDsruP94VlCn++JlfeUXmHUf6
         c2FE23Dr2/ZLbVndX8Bl66v6G7pY/dKZKHrfcsvVrQNcxnnfBUG06prRFHZfE2Nu5OyH
         i6pA65Ves4E5G0ZqjOcm0GwMr3ytrZguRdcKSL49adFuR2AwWlQouk4X/Z69Ugi9pyyx
         u/wkTQMUVF6VjhOlrTCOfgpYPHo78NmpBcOdjJrqbwJc16Wug962lvfv4WhEjZaPiDLz
         sYh0ONrzjD3P11veki+QbwM196GWKpvxb29jPikRDlEZzk0dCQPKPcUGBZugaAkve8iR
         596A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guoren@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=guoren@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRfLH5MyF4gQ5ZBHoSSav4TuuhV5Y51OAM0GiR4jyU0=;
        b=J5C6lwfWhDWU/RdDKgc7TfPyIuIh/mN1/4jgbuhBWZ4MT/8RZXdLwtGbuPiCgaLsbY
         ydOjFjTUnRDiRO3alt8Pf5fV+eszrWhKaNQK2yT7uX8kgwo5+jqOEOK1iaUZJbfsd/ZH
         J9Z6uIiasqvvlLvBqLV4hujH10wTgn+4JJLnmakyxQE38C+XZ8W52kE5/WmUKZIOrMRw
         561QWBKDFtY28JYThB5jCgUFoh8mYI0BBWjQ3VX/B7PmjEdh+B56HvGIjNYn79AE0M2J
         9BdpLVl03+C72YCcVlE/3XRfodcOzrc50TwRyAvFGfaGyC+vI8MscpZSqxyehW4k3DtH
         K9xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BRfLH5MyF4gQ5ZBHoSSav4TuuhV5Y51OAM0GiR4jyU0=;
        b=oWx6h21KmLn9tsQYikkRWL90XFoSinHiUCp8vyKvJERBpKosGN7+yet+GCuBgrKJow
         QYYKUlkb1SSZrwpHI4ONVt9XCtJZSGvWOPQL+H8+06AGBtf/LbtWa6wMI1eNNr9Eox1w
         RFTQhp6eWs5ipIImvCVoQCjUSymgGciLBctzXfUBzeBgU0feOuvwJGjO3lTyUwWYzpe/
         sNQRQuT4RYgw0R7AuWiOKRLC6+/7o1sQEI9rXKRkgB2qZmkSfLFXSlA2QqEO3JrowKCG
         gagqhyjf3j3W7FoszDsm2vNtsMEmBdH+6cvvRPSMhm8zWeyiZfqPBoT5wwthbZYcLR6Q
         IlxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532u0myBy2r2+9iRcNM1qhoo0glr9AeKhm0uLXvVs97FSTIs+JhY
	4KqftilGbQoWbWVcKjRY980=
X-Google-Smtp-Source: ABdhPJwa2pXwVjANDCxj7o2WFN/+83PxsgEsvQlD4Qd0yQ6B/asS/SnQ+NV4WJRmWMQYTpQZlSp+fQ==
X-Received: by 2002:aa7:979b:0:b029:1c4:a2ce:94db with SMTP id o27-20020aa7979b0000b02901c4a2ce94dbmr5949883pfp.12.1611716271299;
        Tue, 26 Jan 2021 18:57:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls305093plr.9.gmail; Tue, 26
 Jan 2021 18:57:50 -0800 (PST)
X-Received: by 2002:a17:902:a5cb:b029:de:cd0b:1424 with SMTP id t11-20020a170902a5cbb02900decd0b1424mr9100549plq.63.1611716270671;
        Tue, 26 Jan 2021 18:57:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611716270; cv=none;
        d=google.com; s=arc-20160816;
        b=zocPf64ELA6DY3FBMCieLm5jDhMM2anbzT5tykh6mkbB1nccVIQz8DxaQgf9+ObXkp
         5DEL/D3fmqTuMqbH4lA5INIpAx+ikC29/irJVIY4sP7gO1rzKXktwWEYQERZMAGeMRjf
         PhvOHgdohbPDOD3+hsCMm1i7L0JI3WEqeWKV6jpgSy1EmM2fASi9qHu7bAV9kWXIVF72
         S8djdrts2cN9CULOx0Px4VQpWpsPC4lGCGCPHpYbMnkyVqE0lNp6VfiOlVOS/1xOiYLi
         8pXtWI8AIb7TgAo1gM6RorZf9+2WR+Oe9qFEws6TObZoP9DNsDzYhYuGtIX6cUgrv5jU
         5SZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject;
        bh=gX6dG4rRvAs2u87hX6rJ3WqFUwKMSgRkjamYxJImtqc=;
        b=oh+m/7UpSbq833/gjBeeiDUmb4YTFLmZatZCz62ggg+/+5jN4n85ehI6HlPI5ok4Cn
         98FF8ZFL7SVgygtKnIyEq0ajQIiDDDVbZqCrme/kM0gOyMSupT6jA5g5Vt0FYvENq3Qr
         hZf78wlR4C70s1XErUM7pvHfPiYfbIT6S7oIZmTyPGzPLhHjjBiZVpSUYkgT3lm2fEzb
         oojTsLXiwObcM7gnCxayniX3XBll2G7uAT9LzhmVk//eJnYgd/WzkakD1OEdpKreKn1c
         LtKCLk/bSN1yG8E1ey7CIsqFtQXxbX6+du8/w5yLkkVIpm9l7Tx/sGH33x4oWm04tBYI
         NAPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guoren@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=guoren@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id mm22si37821pjb.3.2021.01.26.18.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 18:57:50 -0800 (PST)
Received-SPF: pass (google.com: domain of guoren@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R931e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=guoren@linux.alibaba.com;NM=1;PH=DS;RN=5;SR=0;TI=SMTPD_---0UN09ODa_1611716255;
Received: from IT-C02Z45M7LVCF.local(mailfrom:guoren@linux.alibaba.com fp:SMTPD_---0UN09ODa_1611716255)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 27 Jan 2021 10:57:36 +0800
Subject: Re: csky + clangbuiltlinux
To: Nick Desaulniers <ndesaulniers@google.com>, zixuan.wu@linux.alibaba.com,
 ren_guo@c-sky.com, linux-csky@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdnQjm2yMfKLcT-9=iQg68=EskMh3Evrx=3rTAJo3UAnZw@mail.gmail.com>
From: Guo Ren <guoren@linux.alibaba.com>
Message-ID: <d8f70be3-178f-7485-4a28-05108e21ef20@linux.alibaba.com>
Date: Wed, 27 Jan 2021 10:57:35 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnQjm2yMfKLcT-9=iQg68=EskMh3Evrx=3rTAJo3UAnZw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guoren@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guoren@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=guoren@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Hi Nick,

On 2021/1/27 =E4=B8=8A=E5=8D=885:51, Nick Desaulniers wrote:

> Hello,
> I was wondering if there's any interest in getting LLVM's csky backend
> to compile the Linux kernel?  We maintain LLVM support in the kernel,
> and CI in various places.  It would be neat to see these working well
> together and actively supported.

I'll try to compile kernel with llvm after upstreamed.

https://reviews.llvm.org/D86505=20
<https://reviews.llvm.org/D86505?spm=3Da2o8d.corp_prod_task_list.0.0.63a76b=
88jKU2Wg>=20
[finished] https://reviews.llvm.org/D86610=20
<https://reviews.llvm.org/D86610> [finished]

https://reviews.llvm.org/D89180 <https://reviews.llvm.org/D89180>=20
[finished]

https://reviews.llvm.org/D93372 <https://reviews.llvm.org/D93372>=20
[finished]

https://reviews.llvm.org/D88466 <https://reviews.llvm.org/D88466> [finished=
]

https://reviews.llvm.org/D94007 <https://reviews.llvm.org/D94007>=20
[reviewing] https://reviews.llvm.org/D93798=20
<https://reviews.llvm.org/D93798> [reviewing]=20
https://reviews.llvm.org/D95029 <https://reviews.llvm.org/D95029>=20
[reviewing] https://reviews.llvm.org/D95030=20
<https://reviews.llvm.org/D95030> [reviewing] Best Regards

Guo Ren

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d8f70be3-178f-7485-4a28-05108e21ef20%40linux.alibaba.com.

Return-Path: <clang-built-linux+bncBC47LDOHVIGRBZUKQCFAMGQEQ7HMFUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F8740A326
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 04:13:59 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o4-20020ae9f504000000b003d39d97b227sf44227279qkg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 19:13:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631585638; cv=pass;
        d=google.com; s=arc-20160816;
        b=T29yOEVR1zTFlkcemTVtIpSd4dP9EJlx+khz5Exgp7JRkgIHNa5JmG1Wt6IElQxKzN
         Lr+4unDYJ0vhdwIonG4RiNVShHGhHn+cDj3KS8fp2jc625MjUIwria2atO4FyFD4Vl2B
         iOVZ7qK1efgCD/KHEtkPJqoWSbfflBaI/vctQaFMPgq21GnVeWqubutH0SlRFW7gLE8t
         ZC2nZMcsQEJ5hTUHmYa9xg+xrz9GiQRLyRP9sAAgFBb3/kgeYZ3hBnEx7J7eHCc4ORJB
         dwe3kquIyUOQck5NxV+e8haQyF9uq9YQBaHHAr0vuV/Q8m7H98oJmrartWoF4r1p3d2f
         yZQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=JhGIJgdVypx6zuhU5txSlpQvfUpBLmCB9ZFqguD8tWY=;
        b=FuIEFRsl07Ib5B38FA0hd+7+g7bhlzUMqfxjvGxToWc2wmHlNYkp89l87gBdBetvYc
         MdBZAFQW+y44GXz1k9rwJ2GciDEtLD4EDNyuzpW3dwvZ0TsGs+dB28T+3EDBYICNQGOJ
         bQ6yM840WCG0xIVeN/YAN9zNzM/+kFfYh2BM7h3gv9gkf6QIq9GVXEXv4+/q/r+dPQEr
         ip/chQRyylNC+jmSTX/+FDh6yhkl4RX1FzIlOwshWw9GkvBWvNxKp6+07yRTvPphD54Z
         jRIA3sQUbiZ3HqeFT7qy671dq0fhKpZ4XeUN8U3dlVwrFexnPQ9R1vOdZNQHDYaec9Qn
         IAYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=libaokun1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JhGIJgdVypx6zuhU5txSlpQvfUpBLmCB9ZFqguD8tWY=;
        b=rv2SyQfRe5r5/fvITik2vI1M9FgWLyLvm4ya8YrFfHteUlet2V12H0yGTVBIlSXbWe
         6xn/KZ+/rSb7rw++MCDsfN4e5kGgX2Crk3ISAp5EKIeRVze4fyWTkIl/gn9IOCJ775JY
         OJasUZVZ/Za8GHa2a0ySt2qc42AluzM6LftxvjAuKdaYA6SoNpv13gcx2DFcbYbsY3+5
         siICZDVwEYPAGCSMYncf3mkRi2faG/l4aQZvS8eC7sFCRk4nOk9IDL5rRgrxJ9tlmx8K
         9uMcA1//GkuBueroUmJcLzolFgWQn/GYwWhMdDx9UPj2LAWPlrHrnnPWggPspl2WJwN4
         3lpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JhGIJgdVypx6zuhU5txSlpQvfUpBLmCB9ZFqguD8tWY=;
        b=6OrVwo9hXMCgX8Eqg3FdmDtIySGguhLTipMK0+6YWeJTTFM6PsETNM2seqSyyTly+g
         /Obag+L2Iyh2m/DDtx6nvGavj6ARe6gvb6PC0GQQTe2jkybhm6Va563fivHYuU2H4WNo
         hryn/HeWQHi+Cs0FtM2JZwLNrTdzlSFP/MOKDFT3KY98fL8z9gTsVjqNDHoq38agOFOj
         w07UEJ1d/2L3ijQImcSNq6U4VAc/NZrsrcqOkrmaG6pBHb5OPGeFY5Xmo8MVlOcpgESu
         rpfi4CbYJdOEdWKqkahZwqwnQOXAWDUStZJHSYeM3hoA+2hXwHpJh2Ptl/BraboMJ4Kb
         HWUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pgAvpnajMSSEd2nuCxLKHeR7Wd9GNCkJdfIy/bMXO0DyamwPr
	C5kHAIxkvafVWsdOYXfIbYI=
X-Google-Smtp-Source: ABdhPJwdPGdGrL0z2frEYVLBOwB+GBAO6TviPRDpc+hzUq4PKqMui1OqZPAyHCqPz9dU4K3stEeakQ==
X-Received: by 2002:a05:622a:199d:: with SMTP id u29mr2422755qtc.357.1631585638631;
        Mon, 13 Sep 2021 19:13:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f81:: with SMTP id t123ls6381169qkb.6.gmail; Mon, 13
 Sep 2021 19:13:58 -0700 (PDT)
X-Received: by 2002:a05:620a:1905:: with SMTP id bj5mr2581342qkb.124.1631585638197;
        Mon, 13 Sep 2021 19:13:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631585638; cv=none;
        d=google.com; s=arc-20160816;
        b=E2LVbxvh/2pb8zUnFCXvvBT1Q8EtD+RDmn8koM70SEEB4pFLXz9WyN9M0BkmMpWSxM
         fGO7r1pAbNhSEG5jVTtb3gXjScWonDsG5meicXrmA+T/Z8FuWfckYzVN79CSrr0zxFJ+
         hkzoR+GdBg3ObDXBhwqJLLbz7rLcTxDWhXs0SK+JB6kmRydTxapiCPKW4OhN59x+yVRG
         IElXHir+RM4hIAUd6Z0drOySlKttyfWfu1/3EF0CveCGW6zCD5Iz3wiUek2yL3rIszU1
         PRFbW0YNbtyh4tfb9eSfKWDRCBTPXta47pfcdK91YQ1sj2xGq7b3qYp+i/8Qit9cCc2E
         27FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=KMZkTeVa7n/lOkdPK4Jyx3syhOuUmTb/viMMWvQ2YA0=;
        b=XzBwQJa0f0CqQrIpoMusWt4K9+Jk2ivTCxuTJQyQaaQjjrSh02g5C8/EoqAqyt3eAU
         MAvp08qBSNt6uTYEX+9HfoNHPThO/+LAFLYTfvoOk401pamR0HO0taES5GopygFnhglf
         RaqbbsoiAroEcKbxQcuamr5XhTNO6QBiTY7qolKPJsh/JMLBuvxRi2Srm1rYM0qdKETT
         0r6RPaJ72/gi5sCdFfw7JVCtoq5dqIZziXSuVmfqKWGWdnsIoim1KKpCxByAmKyZGk44
         PRIuhHY4+HUuQ2WhmUov0526BHXViqqQADBC6XZJjO6UPyNG2iXffCRs8Vbmxynvl/e0
         IVBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=libaokun1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id a21si5610qtm.3.2021.09.13.19.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 19:13:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4H7mxW5LDqzR5fC;
	Tue, 14 Sep 2021 10:09:19 +0800 (CST)
Received: from dggpeml500020.china.huawei.com (7.185.36.88) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.8; Tue, 14 Sep 2021 10:13:25 +0800
Received: from [10.174.177.174] (10.174.177.174) by
 dggpeml500020.china.huawei.com (7.185.36.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.8; Tue, 14 Sep 2021 10:13:24 +0800
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in
 __nbd_ioctl()
To: Nick Desaulniers <ndesaulniers@google.com>, Linus Torvalds
	<torvalds@linux-foundation.org>
CC: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>,
	"Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, Naresh Kamboju
	<naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>,
	open list <linux-kernel@vger.kernel.org>, linux-stable
	<stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, Josef Bacik
	<josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin
	<sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
	<lkft-triage@lists.linaro.org>, <llvm@lists.linux.dev>, Kees Cook
	<keescook@chromium.org>
References: <20210913131113.390368911@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com>
 <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
 <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
 <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
 <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
 <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
 <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com>
 <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
 <CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u+MeN=PRPPKSS3wFg@mail.gmail.com>
From: "libaokun (A)" <libaokun1@huawei.com>
Message-ID: <db321a38-f5f6-34cd-2f4f-37fc82201798@huawei.com>
Date: Tue, 14 Sep 2021 10:13:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u+MeN=PRPPKSS3wFg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.177.174]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500020.china.huawei.com (7.185.36.88)
X-CFilter-Loop: Reflected
X-Original-Sender: libaokun1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=libaokun1@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

=E5=9C=A8 2021/9/14 7:23, Nick Desaulniers =E5=86=99=E9=81=93:
> On Mon, Sep 13, 2021 at 4:00 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>> On Mon, Sep 13, 2021 at 2:15 PM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>>> Sorry wrong diff:
>> Well, this second diff was seriously whitespace-damaged and hard to
>> read, but while it seems to be the same number of lines, it sure looks
>> a lot more readable in this format.
>>
>> Except I think that
>>
>>                  default: dividend / divisor);
>>
>> should really have parentheses around both of those macro arguments.
>>
>> That's a preexisting problem, but it should be fixed while at it.
> Ok, I'll send a revised v2 based on _Generic; Rasmus can help review
> when he's awake.
>
>> I'm also not sure why that (again, preexisting) BUILD_BUG_ON_MSG()
>> only checks the size of the dividend, not the divisor. Very strange.
>> But probably not worth worrying about.
> I sent a not-yet-applied diff of my not-yet-applied diff.  I was
> playing with this last week, and IIRC we had divisors that were less
> than 32b being promoted to int. But I'll test it some more.

How about deleting the check_mul_overflow in the __nbd_ioctl as follows?

diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index 5170a630778d..f404e0540476 100644
--- a/drivers/block/nbd.c
+++ b/drivers/block/nbd.c
@@ -1393,7 +1393,6 @@ static int __nbd_ioctl(struct block_device *bdev,=20
struct nbd_device *nbd,
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int c=
md, unsigned long arg)
 =C2=A0{
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct nbd_config *config =3D n=
bd->config;
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loff_t bytesize;

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 switch (cmd) {
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case NBD_DISCONNECT:
@@ -1408,9 +1407,10 @@ static int __nbd_ioctl(struct block_device *bdev,=20
struct nbd_device *nbd,
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case NBD_SET_SIZE:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return nbd_set_size(nbd, arg, config->blksize);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case NBD_SET_SIZE_BLOCKS:
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (check_mul_overflow((loff_t)arg, config->blksize,=20
&bytesize))
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (arg && (LLONG_MAX / arg <=3D config->blksize))
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -=
EINVAL;
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return nbd_set_size(nbd, bytesize, config->blksize);
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return nbd_set_size(nbd, arg * config->blksize,
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config->blksize);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case NBD_SET_TIMEOUT:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 nbd_set_cmd_timeout(nbd, arg);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return 0;
--
2.31.1

--=20
With Best Regards,
Baokun Li



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/db321a38-f5f6-34cd-2f4f-37fc82201798%40huawei.com.

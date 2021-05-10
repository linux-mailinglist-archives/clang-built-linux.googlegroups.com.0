Return-Path: <clang-built-linux+bncBDLYTQ5JSECRB46Y4SCAMGQEKS2VNJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E554D378C7A
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 14:52:03 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id v23-20020a05651203b7b02901abd47176ffsf3363550lfp.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 05:52:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620651123; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1Vc+B94Lfq8rj3DHVdn2t5j8AXJMd0a4ctry433AFvEuqlafpIesOszC6ZdGRu+r5
         thMNpfoTOA6x9RwJflhvge4rywNkIrTCTZ+3MDsnNz2CLByn5px9LKrbNlQjyBVz6uqe
         lKV2j9OrtM3ugCc42CfWgs4GpNBlrm7XoIBY35hAV+ZV4QtMpfSLqgTkdSbaZn3NPcNE
         lKKkSM6gEZxujLBOrz0k8816pNJcKj6bDHBQhkiPR8Zw8O0ipdVuxkiBVrHN3oLB+B2/
         rf7VtxDlEhP4KEAkT9BrhO7G7gGohLzcYw+sG0I0wTxAIJpikAUD0NipIZFNr1SgOHjX
         EAxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=AMCBdVwdaShcMzmwMbYkMXK2y26ayxkKiEyAFztgVLc=;
        b=C8Ipf07TAhGETgMg1tAw5gzMl4+jdcknkBoXpO5b6MOJtOzl/eprLGzx66Yv1UCyPf
         ryodXsQkEWYDRklgwUUzM6Azth2zFVBeF4Ugbt9zA+NBGX5FivDa/GOAGWc6rI/bND2d
         nQs+ALZodIfJYg9QIEM6d/0pJeIova+AnJK2y/gG0G2CIZ2j0wmLnEKrBeImhOq5jcj9
         iFBNcijfA4drTCVZYh/eqLF0GJHdNs+D7rYHm2Aw+I7GeFAc/oz9XZPpx1AGOIT/mOn4
         7Kx/xp84WGFE/lnu7BPZCJuAeXGCICsNOH6o8GaKSr2y/An3Xf+gND+xVmmzBTODXRBI
         w2SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xa/V6eER";
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMCBdVwdaShcMzmwMbYkMXK2y26ayxkKiEyAFztgVLc=;
        b=aCJiePxz6d3zpgj2amwEyO44/CXCjM2OZktxfZRmnib1RJSEEHZ3SAisYL4JZIDlhZ
         UMyGOFx3fmMPFMNJWk402r7RPQrU9NUpTwdYuyNOFlw0z4MGBQTuKveYEcRUPHnZZgj2
         7kP15pabUOFmghVwpa/gd1wRocwp/m9dDfjyfz2TeAnGhoDu4diqJOoBtdx6g8njlIDX
         aNl5r7NnCeTXHKnXqb5eUSXe4JT/I0J5pjJOmkR9EMpS7bdTfscpPqrdPqLtb72WEtem
         AIqXtaGOMqo0jCW4MWS3hctUgQXhSHS0hnKYAscj/nWc6I4374E7+82rOKi/Uij5bH6s
         hLsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMCBdVwdaShcMzmwMbYkMXK2y26ayxkKiEyAFztgVLc=;
        b=cWLTwD+T9QeJRCVCeRJvGALfJXbGQ9PPM9hXZpHKRZIJ66aNegGqvDn9LUTFGgs8js
         ydkFg+KDAt1cDzamP0zR5kzMjotFlhRx4+96A9tE+om/jVpfOYvIpTmFdoIz64bfljh5
         z1zUFUhf69s7mulvWtqUcV6G4A7BFl3nLRINjLS7LsEspJbHN+mKBRzREX5VPP2vc5M5
         bTfuVFyfOx5e8tm48Buj0E5uCfi/aggPrJhCpcjzUJy3e7HfhGwdXECgqcZdTEs/iBGF
         E+jRECOMKBDAjTAR3riw3rXED9e96m+pGWozRMZv6W7wcwOFZiV3bZFOpZLssPD6fCEa
         uEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMCBdVwdaShcMzmwMbYkMXK2y26ayxkKiEyAFztgVLc=;
        b=opiqPHRaavu7Dxa17/lnowb/cCNocf/0JMG6MhkXawAZDw5lwfvYj5fGL17SXjP5Qe
         WX0fNC2jBUwf9dNugEl9ENsQxPSacgd06Tg5T3IhzUDDb5e6ngNVQCK6i1WyhdT0gPz2
         Eca0l7lS0YzVe8S8laGmt8G+5YdtYLoCsK2qE0CNdKR9/SQjZutnce9e0ZvUeyfCIZk9
         MthXMwrbvF8UnjU85qFqcubgMBpivqmYSigTqxwfcwGgKu5uLm8fnPIFw2SijXuU87g8
         asZhVRlzTbR7cU0SVSewJLhs5s4zgHV03UtsM1NxayZXNnfpOW+7fg8vFEiKpg9ZqKOb
         HqTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Xb/TizUMRXHHM2L6Frg/lSkG6KoQHj2WrQDu8OQWj8PasQ9m9
	x3kxKLR886ss7V1yaVhn9nc=
X-Google-Smtp-Source: ABdhPJzHoYWGH+uovdRytapmUxkZGLLYaWRduIrKWT6uU15BI2gVoAe8ZEtIxEeMCsK9hGx0lduHVA==
X-Received: by 2002:a05:6512:312b:: with SMTP id p11mr17207043lfd.74.1620651123359;
        Mon, 10 May 2021 05:52:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls9638247lfu.1.gmail; Mon,
 10 May 2021 05:52:02 -0700 (PDT)
X-Received: by 2002:ac2:5151:: with SMTP id q17mr17146686lfd.450.1620651122117;
        Mon, 10 May 2021 05:52:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620651122; cv=none;
        d=google.com; s=arc-20160816;
        b=r49uC0qpQnB/DfCvO0kB+OCf2htH65phUbbKZSGhCXtVDsRaQ11stmvWcxWUoOyOxy
         b+1kAZjAwzbXJS4w3NrcV4tqjkw0cfhozrZsQVW85Pye+37Uqr3F2cLpS2cPZLYZ2+iN
         /c2+4USwVrKfx1j659WcCDwjik0bHx2ZIGhQxgmg0vG7jzcsWssxYPT7RsavUbKLobcB
         SQ8L0tvBhlUsiYlv3vc/j/g9HqRQalOz4vh9/ewz3cICAH+nLXzvAWRuff97XanJpvzX
         SaGZiB7VBsL15sku4xPQFjBiqZ/tXy7eHJmbg7guLotk6iz2dgOEB50EsP1kl1IqQiPz
         ef5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=w4QsKbQf5+/HIa7q0DIrIxImUQp3y28m2a4dwOLfss8=;
        b=l13nyPG3vDGUJLePQQyyrs2efusW//xpPOiMzperIrzFOma3731WDhuZmzNTSrr2vH
         WTF0Hhe8GXpd+n3b5dhUUywoYSX6hGPw7BsWopncTIKsviInP18Hkt84r4D6cZWFSZd0
         BcC6Po3/oZ1FdwQfiMj91GRw8hD+qtpzVXd4rQQaupGugNOaKqvdwCMaNxrLicSgo838
         ds+qp8gP/iN3+RiUum5nGCTdn7+BY1YOZQ3R7qJhF5cKXXQ4wkzctcTxDduz1KxbyGRZ
         79qd8Q1mgd3nKC6c2WPPbJqK4uH/D4dnOE2WF5RMpyZd+LwWT8PRGwYUxTRwgEG/vDzG
         3QAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xa/V6eER";
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id g25si700371lfb.10.2021.05.10.05.52.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 05:52:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Received: by mail-wr1-x42e.google.com with SMTP id t18so16519065wry.1
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 05:52:02 -0700 (PDT)
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr31873427wrk.244.1620651121486;
        Mon, 10 May 2021 05:52:01 -0700 (PDT)
Received: from michael-VirtualBox ([31.168.255.170])
        by smtp.gmail.com with ESMTPSA id y17sm25582507wrw.90.2021.05.10.05.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 05:52:00 -0700 (PDT)
Date: Mon, 10 May 2021 15:51:58 +0300
From: Michael Zaidman <michael.zaidman@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: lkp@intel.com, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	jikos@kernel.org, dan.carpenter@oracle.com,
	linux-input@vger.kernel.org, michael.zaidman@gmail.com
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
Message-ID: <20210510125158.GB2276@michael-VirtualBox>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210509193213.5974-1-michael.zaidman@gmail.com>
 <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
 <20210510091730.GA2276@michael-VirtualBox>
 <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xa/V6eER";       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 10, 2021 at 02:52:14AM -0700, Joe Perches wrote:
> On Mon, 2021-05-10 at 12:17 +0300, Michael Zaidman wrote:
> > On Sun, May 09, 2021 at 01:39:29PM -0700, Joe Perches wrote:
> > > On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> > > > Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge dr=
iver")
> > > >=20
> > > > Fix warning reported by static analysis when built with W=3D1 for a=
rm64 by
> > > > clang version 13.0.0
> > > >=20
> > > > > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type =
'short' but
> > > > =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0r=
eturn scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~~~~=
~~~~~~
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> > > > =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: ex=
panded from
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> > > > =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^
> > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26: =
note: expanded from
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> > > > =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u16)=
(__le16)(x))
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded f=
rom macro '__swab16'
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(=
__builtin_constant_p((__u16)(x)) ?     \
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > >=20
> > > > Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > ---
> > > > =C2=A0drivers/hid/hid-ft260.c | 2 +-
> > > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > > >=20
> > > > diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> > > > index 047aa85a7c83..38794a29599c 100644
> > > > --- a/drivers/hid/hid-ft260.c
> > > > +++ b/drivers/hid/hid-ft260.c
> > > > @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *h=
dev, int id, u8 *cfg, int len,
> > > > =C2=A0	if (ret !=3D len && ret >=3D 0)
> > > > =C2=A0		return -EIO;
> > > > =C2=A0
> > > >=20
> > > > -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> > > > =C2=A0}
> > >=20
> > > There are 2 of these so I wonder about the static analysis.
> >=20
> > There is nothing wrong with the static analysis. The first scnprintf fo=
rmat
> > type is perfectly valid as far as its size is greater than the size of =
the
> > data pointed by the *field pointer, which is a one byte size in our cas=
e.
> > The static analysis warned about the second scnprintf case, where the f=
ormat
> > type was shorter than the integer returned by the __builtin_constant_p.
> > This warning can be considered as a false positive since the le16_to_cp=
u is
> > all about the 16 bits numbers, but to silence it, I submitted the above=
 fix.
>=20
> $ git grep __arch_swab16 arch/arm*/
> arch/arm/include/asm/swab.h:#define __arch_swab16(x) ((__u16)__arch_swahb=
32(x))
>=20
> otherwise:
>=20
> static inline __attribute_const__ __u16 __fswab16(__u16 val)
> {
> #if defined (__arch_swab16)
> 	return __arch_swab16(val);
> #else
> 	return ___constant_swab16(val);
> #endif
> }
>=20
> #define ___constant_swab16(x) ((__u16)(				\
> 	(((__u16)(x) & (__u16)0x00ffU) << 8) |			\
> 	(((__u16)(x) & (__u16)0xff00U) >> 8)))
>=20
> /**
>  * __swab16 - return a byteswapped 16-bit value
>  * @x: value to byteswap
>  */
> #ifdef __HAVE_BUILTIN_BSWAP16__
> #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
> #else
> #define __swab16(x)				\
> 	(__builtin_constant_p((__u16)(x)) ?	\
> 	___constant_swab16(x) :			\
> 	__fswab16(x))
> #endif
>=20
> Under what condition does the ?: return an int sized value
> rather than a u16 sized value?  I fail to see a path where
> the compiler should promote the returned value to int _before_
> the promotion done for the varargs use.

Oh, I see your point. Might it be that the static analysis misinterpreted
the __builtin_constant_p function which has a `int __builtin_constant_p (ex=
p)`
prototype according to the GCC and clang built-in functions description?

>=20
> If it's for the varargs use, then both instances are promoted.
>=20
> > > It's probably better to use sysfs_emit as well.
> >=20
> > The sysfs_emit was introduced in the 5.10 kernel:
> > 2efc459d06f16 (Joe Perches 2020-09-16 13:40:38 -0700 335) int sysfs_emi=
t(...)
> >=20
> > But, the hid-ft260 driver will be used mostly with older kernels, at le=
ast,
> > for the next couple of years. Since older kernel versions do not have t=
his API,
> > it will require patching the driver or kernel that I would like to avoi=
d.
> > Nevertheless, we can reconsider the sysfs_emit usage in this driver in =
the
> > future, upon wider 5.10+ kernels' adoption.
>=20
> If this is only for older kernels, then it's not really useful
> upstream IMO.

Under "mostly", I meant that the majority of the kernels used in the existi=
ng and
currently developing electronic appliances (not necessarily computers) are =
older
than the 5.10 version at the moment, and this driver should be usable also =
by them.

The scnprintf enables the hid-ft260 driver reuse by virtually any kernel ve=
rsion.

$ git grep scnprintf | wc -l
6121

>=20
> any sprintf style use of %h or %hh for a sub int sized value isn't
> particularly useful as integer promotion is done on the value so it
> should use %d (or %i, but %i is atypical) anyway.
>=20
> https://lore.kernel.org/lkml/CAHk-=3Dwgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+=
4TC=3D20e0Q@mail.gmail.com/

Thanks for sharing this info. I will replace the %hi with %d as you
suggested.
>=20
> $ git grep '%d\b' | wc -l
> 109922
> $ git grep '%i\b' | wc -l
> 3508
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210510125158.GB2276%40michael-VirtualBox.

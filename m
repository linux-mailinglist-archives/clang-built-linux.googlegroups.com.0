Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5FOQCFAMGQE2KFSYOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5640A471
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 05:31:00 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id d10-20020adffbca000000b00157bc86d94esf3370573wrs.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:31:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631590260; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ob4u/Skg37GxjZCw3aBQhVipMVaZPXLejiEGuUJMo43rnxopjP5cu+qTqrh26nu5BW
         4hFdM9woSn0cgxkQcFPXyfMROhF9L785jxx6Ww/vMoRIO5ceMZt4CBZt6ipJUwMBr3PA
         ZSHEV/IZVLpE9auS44ZbG+RAmqZxDVeY3GBu2wLvNGYiGixdUspYkv4jhe2eBpAoMIlS
         U4OA+AmHTOMdV69JP2K40SGkC+G4EkGwmBmNWWiwE0/Dv6I0whNC1HCw+poNI4C8MxuU
         jHJg03Sy9A+4kRKugaPK4zM6as1yWdxrJo8dFLsluELBuo5jDOfvNN9YfW+Lrba0rce9
         ighw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i34rnhamnFvupDK2MSlfpefW2VNvjrzmDJOrLl8wRlc=;
        b=Pmd7Fvh20K05+6sg4fSUd/FWu0HEcXswIT87rgtIztxrKO8a9vxv5CKh/p94x/4Y8T
         6qlLJIQ/saZYkIglxIh/6MtMmZUNlnbGdwvDNmh3w7XK9ntL2x8U5/oZmjPVH8Ei7RO4
         62Fwd0XK6UWgUhFnxbP993Z8ncQCa04Z87yLEQ/iPRMxSKeMpF/rsNTJ53ihk435Ehoq
         H9Alb1fz+0d/DalLOD82BBTB/J5i6bMQl22LJWRwmEUOantrvxZHHLdIajJe0PQIctyE
         hbTgdXDD4fHfVzigcSIqqLEGUr4BbXLbpS9+ykvcC7ckGh4Nj9UW7AonJ1UJF1Gei8UI
         2FlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="oGsn/ceG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i34rnhamnFvupDK2MSlfpefW2VNvjrzmDJOrLl8wRlc=;
        b=N6TQmSB0vczJ454qAiXGtakCzEHGcEGzUGLPyt5XieIIEAixiBOSJ1EqpZ7gVmj3iB
         HETxwEH8m5+naajnea58gKTDi3wSAh3BszdlEpZL9z8+4CEbJSOE4di8emXYH2ktzWBH
         iZc58N9IO6EMYOtEMmBlM93lld4wVxfxgm1IoBfW+Z73aILMCSYm9Typ8MWdwmwsaea/
         y2vTdO+C8NIxDqFSnjGgEK+r5tNaKytZ7HnZhswa5reM9ch6YmnOMz+oxL8XjlXOmloW
         KfdB34Dw2QAceQ0+LNe3SvoDYBm3nPM/HuN/n+QejIw0h/WwyB7P6RhT+aCkYwAH5dhO
         UsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i34rnhamnFvupDK2MSlfpefW2VNvjrzmDJOrLl8wRlc=;
        b=hCacW8Nw0ihc2hpSbTezG5hacgQeJWml7tMAfNfmo5APhrp1gYJqaFlSsrvmnY0cvG
         4TC01xCeiE4dkcORCewH26jeho3LVvaaS8HMFgzsqn/dCPm0r4PK8WDW7L/Q0cBnr/Ir
         R+GoG0KJTjGIPU6bG7LQ4pSwSW1VY+ERX4gG7o+5Ynvl2TebXj5ZJZg9n+zYS84JxikR
         jYrdlZei9I1Tsf3qAKo4xDRpfXQ04BxycaQ8KoUax5sP1NTJokKTWqmmZZnbtAs4GOfy
         3ERSmlojcZ4l4HMConcn09nRl2FqjRW1L2Rky00fHBacsbwUtFQNyUGXtAF4vnfnXDp0
         9AYw==
X-Gm-Message-State: AOAM5323NbhsO0/gZ9dpPN+1pwrLq7mg2m28QdMhxzU2a9pkSu+YJX+w
	yVTUFbyItlvgIkTe4MPv3zc=
X-Google-Smtp-Source: ABdhPJyjAvcN5C4wW/D/CCCu4bHDZAobmBJp/AG1Ssbpy/OVONcrsnaFUxpG3B+loKI+5GHkPz0hDw==
X-Received: by 2002:adf:9d45:: with SMTP id o5mr15986026wre.226.1631590260699;
        Mon, 13 Sep 2021 20:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ba86:: with SMTP id p6ls5437404wrg.0.gmail; Mon, 13 Sep
 2021 20:30:59 -0700 (PDT)
X-Received: by 2002:a5d:598c:: with SMTP id n12mr15037748wri.391.1631590259726;
        Mon, 13 Sep 2021 20:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631590259; cv=none;
        d=google.com; s=arc-20160816;
        b=ftowPBPs8W6Rtiwc+V7gJUnGT/squ3YvjN9UURANBXgn2KcUsHtpBE2seC+W6SjmBH
         FrvOSajByWFxujU2V76LDPUrOYuCR9gH8CqSNZyPdF+QX6NlNUr/0HrX7ZumfNub0GJQ
         0C/5Camm35MP8qsz+etzsjlMQx0esvdo1U0N42xcF6IbZcn3gjgYmyJUcvoXt/imBfjV
         CZICZZmY+47HRz1o5SjZmVahcWN5EYVRCMrDkY//rdg3z2LTJ/MtCaQjSvUkAFvcJ6JK
         OMZpkAGMwDMgws5xx72nWD7y1ev4WaJGtE5Dc9DzNWqV4pXSLf4y+shFlLc2N+RLV/ZT
         SC2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XZIR+OW7AmJfiUUZaovaqUuh5fl5BCbvBkZHwqEmM5s=;
        b=Hh01G9IXHaRNvyoUabAqHII0MvQ/yDXD5UwmOWNqA+kD1Z/4G8IdE+Oq15+Mol2wLs
         M69mrUQzEsPyBOXyBrO76of6KUZ+FdeJHJbA+nbs89dzGF4iBlPxUDhSmiOAvF043ZOR
         pzzt2Z063hPOscR9jMrQzDNHMAsmlYaCTntQ3x2C0a3al/Zj/ACJDyB2koGyNg7MxBF1
         IDIQQsN2Uj6bXi1+ygwUi7MBcSv3/+fOjeO6CocASL+c1r1O91Ska2+68EGihejsElUe
         zHkgqrTq6lGBGi6DZtH2L4fZPj7GkZBtpa3GtITS7G7Jta+qRO09PVQ6pugRpczXBtaM
         oShw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="oGsn/ceG";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id g8si1038459wrh.0.2021.09.13.20.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 20:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id r3so21107746ljc.4
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 20:30:59 -0700 (PDT)
X-Received: by 2002:a2e:8808:: with SMTP id x8mr13766486ljh.220.1631590259172;
 Mon, 13 Sep 2021 20:30:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
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
 <CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u+MeN=PRPPKSS3wFg@mail.gmail.com> <db321a38-f5f6-34cd-2f4f-37fc82201798@huawei.com>
In-Reply-To: <db321a38-f5f6-34cd-2f4f-37fc82201798@huawei.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 20:30:46 -0700
Message-ID: <CAKwvOdmMHFOke5kzzgBDwKySzP799-cnp-61cohJRJTS4cFmzQ@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: "libaokun (A)" <libaokun1@huawei.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="oGsn/ceG";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Sep 13, 2021 at 7:13 PM libaokun (A) <libaokun1@huawei.com> wrote:
>
> =E5=9C=A8 2021/9/14 7:23, Nick Desaulniers =E5=86=99=E9=81=93:
> > On Mon, Sep 13, 2021 at 4:00 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> >> On Mon, Sep 13, 2021 at 2:15 PM Nick Desaulniers
> >> <ndesaulniers@google.com> wrote:
> >>> Sorry wrong diff:
> >> Well, this second diff was seriously whitespace-damaged and hard to
> >> read, but while it seems to be the same number of lines, it sure looks
> >> a lot more readable in this format.
> >>
> >> Except I think that
> >>
> >>                  default: dividend / divisor);
> >>
> >> should really have parentheses around both of those macro arguments.
> >>
> >> That's a preexisting problem, but it should be fixed while at it.
> > Ok, I'll send a revised v2 based on _Generic; Rasmus can help review
> > when he's awake.
> >
> >> I'm also not sure why that (again, preexisting) BUILD_BUG_ON_MSG()
> >> only checks the size of the dividend, not the divisor. Very strange.
> >> But probably not worth worrying about.
> > I sent a not-yet-applied diff of my not-yet-applied diff.  I was
> > playing with this last week, and IIRC we had divisors that were less
> > than 32b being promoted to int. But I'll test it some more.
>
> How about deleting the check_mul_overflow in the __nbd_ioctl as follows?
>
> diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
> index 5170a630778d..f404e0540476 100644
> --- a/drivers/block/nbd.c
> +++ b/drivers/block/nbd.c
> @@ -1393,7 +1393,6 @@ static int __nbd_ioctl(struct block_device *bdev,
> struct nbd_device *nbd,
>                         unsigned int cmd, unsigned long arg)
>   {
>          struct nbd_config *config =3D nbd->config;
> -       loff_t bytesize;
>
>          switch (cmd) {
>          case NBD_DISCONNECT:
> @@ -1408,9 +1407,10 @@ static int __nbd_ioctl(struct block_device *bdev,
> struct nbd_device *nbd,
>          case NBD_SET_SIZE:
>                  return nbd_set_size(nbd, arg, config->blksize);
>          case NBD_SET_SIZE_BLOCKS:
> -               if (check_mul_overflow((loff_t)arg, config->blksize,
> &bytesize))
> +               if (arg && (LLONG_MAX / arg <=3D config->blksize))
>                          return -EINVAL;

64b division is going to need do_div(), yeah? Besides, this is likely
to pop up again for other callers of check_mul_overflow(), might as
well fix it.

> -               return nbd_set_size(nbd, bytesize, config->blksize);
> +               return nbd_set_size(nbd, arg * config->blksize,
> +                                   config->blksize);
>          case NBD_SET_TIMEOUT:
>                  nbd_set_cmd_timeout(nbd, arg);
>                  return 0;
> --
> 2.31.1
>
> --
> With Best Regards,
> Baokun Li
>
>
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmMHFOke5kzzgBDwKySzP799-cnp-61cohJRJTS4cFmzQ%40mai=
l.gmail.com.

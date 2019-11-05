Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLEAQTXAKGQEX2GGT6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id E06A8EF497
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 05:53:01 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id q29sf20148997qkn.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 20:53:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572929580; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7vT3qEY/D5IxRKRb9qn4ZUTkylhpFEvbKAjko/mBRaogZvnuHlFQXGpA3ZwgAlBtA
         99qGX0xbhFCIPhpE2bxXy5+kf7Su3uAUBuoNzxTBmp4CxEXVJLY/00pUVGb6BdCBHN43
         z7AlhAwLx+AzQib3T5RSoSu2TQ9QoUUyBVcKyN6Z4tesq4ti50vrwULP31mg02nD0AT6
         zL4QfzoDJsxur/4BzyCdwwUyD0z4ldR9tSgFqfyOKgapnPK0IvVcwtw2cYmiAXWKOYLL
         TniBLiXGsCqWKDmwLhoG3ifuiAJoF7rD4BH+VJ4qR01ilQCus5lXxx1QIkO6dsvbipBV
         Qgqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=onGpqIe5HeWkafWqOu3BwnfbaX/D394YhmPSyilFBKQ=;
        b=fgj3Vp7XtmCF3cv/VodBnhKrzLPQHEPIsM/a5VYGHyz1x+lEx1ESIBNsAYmDz3Qwun
         2dc5k6pXw/7uapCeBNYCKTj84ly5+9FTNxAwTyu7TyVKBdxTrLXhlSnpTkGUPGGDPZkI
         tl7VdJ/ZD5zvI+zqyhCxkeh8LTenBW8jv34FVmuZhEmVZ2npQ7vcmomVFq8zkfv4kPBJ
         l8rnrm8KTRgV+7CzYIl31rmceQ2V1fa3Wen38/+Jpbr9l27zU3BqKFcBc9oMRFhNDnwP
         s+4tCCmJMlwa4c7Eiv60saT8z1p0SfP0Wmx9A3wxXCsJKJjt8fRS89iRNTCb2JWwbsdb
         g13w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5xCUJYd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onGpqIe5HeWkafWqOu3BwnfbaX/D394YhmPSyilFBKQ=;
        b=VyCw+E4E0SCD0Yx2t2QuldWAVRfa+Dq7Wcs/q12zobsasYb9RjmyLNVlnGv9SD/b/9
         VPJnzYIEhsLnN0PTmnz6v0GTbq7GtR+HVy0eC+x712ig7DyV76y6FFLMS81xbLWHvd8/
         ghNqEMqCeWitwTNxdmNMnlESQXMk08d2pYyZCrHNkZ3SBAoWW90Wz2vx5RJD/h9ISWeq
         9y2Ny/O54xYXt2t9kUZwB6IGkZDWyJfzSSAt8oVy8y8PFCkW5hovcmt2XyIkmzGEPRIq
         cn+LxueqhEf3P4AoODEzpHdHbrf5BeMDGPzv9wcbyy2ycqS24MTWjX0njjBjQwl6EEgS
         1kFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onGpqIe5HeWkafWqOu3BwnfbaX/D394YhmPSyilFBKQ=;
        b=RdvwyVCUSWq1hmo+leCJz6benriviFxy0rtCPplBSbq/7KIvX9yjQRgXBwn5nrrfy5
         v64oNu/48mayBErqs2KgXS5r4vZeC/nYoYRyRcLDl+h3uakWtnlMznbAfRK4b2PWzNLv
         lPprDMM6U0gNA9So5w8TO/nfnBf5OvDLtcHDeMJNYHrGUz6NDUEj6Q8/c2LHSvAfXNhE
         KN+wKilV4wnWB1R0Aw0KdbJSD+N1WLaK7yMbiO3twAuFhmc3gf2cqYguG1E3Vy4D3OII
         8L46AvtP6kb0QPn5XMpOGn0u+mmwHi6iTaH7XltpU7GMrwwm20HLKUKLBh5zoVEDOSSw
         1zDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=onGpqIe5HeWkafWqOu3BwnfbaX/D394YhmPSyilFBKQ=;
        b=HxGNp+PE0K0CGBlzSvFtJpYTNrStxdxbURCbgrAzLn08BQqAPa8gz59LlqOiQrXXMy
         2/BB8MCAOlQUzXtuFDmFqjiAUyHEbxyHppo3PUPFcAcOWRtlI8HUzPWl5Asaz3LyoBJu
         f2MsbgBUcESHwH5xZboEoV2/6vsUTDIvsocNiTru9AOSNrmoWUjcUU1/1LBhe7IdlOFf
         f/TB3j2eW4oZM2xY4DCvfT8/IQ/AB0X3/AwNsS8PJB9lBWZg2xbwLWGh474nG7k/bn0L
         W6epirqUVwD+S9q2gEL54UAa2BH9eM3szbYtOm3PklFPimsKXZqCCMo20IDEVgguE2h0
         xsaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtUPzSXtssBpyCE0rEolleNyDg8omMRrcYnxwoQH/T9fJbg0D7
	dvFmSbBW+pMzxVUhMZKB76Y=
X-Google-Smtp-Source: APXvYqxr7hdYgcUuOku595H6AAXBAzOScD1+MPP6QvKrMVKisCA/OtsBg4AKsq04YOXVT/70JrwhgA==
X-Received: by 2002:ac8:34cb:: with SMTP id x11mr16186601qtb.67.1572929580692;
        Mon, 04 Nov 2019 20:53:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:341d:: with SMTP id u29ls4915292qtb.2.gmail; Mon, 04 Nov
 2019 20:53:00 -0800 (PST)
X-Received: by 2002:aed:24c1:: with SMTP id u1mr16355856qtc.29.1572929580431;
        Mon, 04 Nov 2019 20:53:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572929580; cv=none;
        d=google.com; s=arc-20160816;
        b=GMRIzvpt7cRWlrfB5rFj2jFgA6D+cO/lThTiITLwNQAPl7G/BJZWKSz+NHQAiY50WQ
         fAbdEofTE+PYKZIj5ir7M33BzJLfwAy1zVm3/fMUN64PkycIlCXxfG1tdg8LgAbokVB6
         wVQ+H/mYn+Cgh6KktGFjqyy1sye+xLED8lliqslHuAch2ugssySs1WYMnPMCaNr9BUQT
         FWTyehKeIpHyD2FsU6lFgjFkd/oejVtAIsAmpliZ+u1P+ODXQgOUw3BvqBqFu5dGMnSa
         RC6jd5LElPPwnGl83qIlKPcqGyVHPsT7yePUm7LSJ/JSH215quC2bJMGbG8GztU7S/jw
         sA2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=i99YmeGdzZ5lmafSuvXsLQ2aqlgSPAWEgL2/DHrzEkg=;
        b=EQ6ut/TGDIVOzsmqjHrdleSOXzPl7kHyd/3JjwmzfQDSYqp7j/HwVEIomy3pDDo0wo
         85DtWyp3sG4+Y4nsB7/pNCgi73SdqPiqEtslYb0Hps8XMlncMhBNrvUcppqhUjf1PddD
         b5qe1UXHRtxKBVZsgo7es+f7QGuZJ8R0A+8JDG9QXiEwtbrHc4B1B3yAm3PbiQR4xwUl
         jynman3YKhAWmKHBICBo2YtxQo6wLD1zrzTWceCo8glWcb8PgGOSqrJKV4Y5HmqoYlzh
         3tbkiy3SSxLQItwXohUoTkqaUYU5BsDCRZda3x7UWREuAZTTjDgkgnBPXQ13Bs7KwlLf
         fmfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P5xCUJYd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com. [2607:f8b0:4864:20::929])
        by gmr-mx.google.com with ESMTPS id y199si354287qka.3.2019.11.04.20.53.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 20:53:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::929 as permitted sender) client-ip=2607:f8b0:4864:20::929;
Received: by mail-ua1-x929.google.com with SMTP id o9so3982727uat.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 20:53:00 -0800 (PST)
X-Received: by 2002:ab0:20ad:: with SMTP id y13mr7236828ual.70.1572929579854;
 Mon, 04 Nov 2019 20:52:59 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
In-Reply-To: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 4 Nov 2019 21:52:46 -0700
Message-ID: <CAEVzpN=CAzY-rpppnhiroDBwPqQO0rwQ7AmbpPWiA8-ynhks3w@mail.gmail.com>
Subject: Re: [Meet-Up] Call For Presentations
To: Bill Wendling <morbo@google.com>
Cc: clang linux fellowship <clang-linux-fellowship@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, nhuck15@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P5xCUJYd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::929 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 4, 2019 at 2:06 PM 'Bill Wendling' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> The Official Clang-Built Linux Meet-Up Call For Presentations Announcemen=
t
>
> Now that we have a date for the meet-up and people are starting to sign u=
p, we need content. :-) We are looking for presentations you think would be=
 interesting to people. Your presentation could be an hour or half hour, th=
ough I wouldn't focus too much on the time aspect.
>
> If you have a presentation please contact me and Nick to let us know.
>
> Some people have already mentioned presentations they would like to give.=
 If you did, please let us know again just to verify.
>
> Share and enjoy!
> -bw
>

Hi Bill,

I'd like to give a talk around some of the benchmarks I have been
working on such as around how the different LLVM optimization
technologies like LTO and PGO impact LLVM's performance during kernel
build times and ld.lld link times.

It might also be nice to discuss how getting patches into the Linux
kernel has gone and maybe some ways to further streamline that.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEVzpN%3DCAzY-rpppnhiroDBwPqQO0rwQ7AmbpPWiA8-ynhks3w%40m=
ail.gmail.com.

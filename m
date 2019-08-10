Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQMQXXVAKGQEZJLLEAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D531488EAF
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 00:42:09 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i6sf48319372wre.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 15:42:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565476929; cv=pass;
        d=google.com; s=arc-20160816;
        b=UH805guUbTBa3xfyU4kUPUal8xBsVcTNcjGJ2v6nnv+Cg0E7ojf2ke1WI6I9Ta5ZFJ
         aHprrH6MOESr9d3g+DxE2UX2aY95QUN7WdGK2ePEnvTGOpS9k5Ps8R/R86Pfg4ulX8EJ
         ieYpbvWpuMd4xbjt3OMBuz2kIYy/35rc+SGBpJB+yFml9XUXXgYwQP8+AqWR2TA1lsOY
         oK0MFXQ4bfjIcAVRks1eKjU61lR+DwiI7zkCdLwJ/ZCBVc+x1igetLYII++gAmrNxktI
         S3zaycZ0WryoCA/Gvhwnbyh+aSIO/RX6JDyyu2siovIU5ECvr1A8bIb8Gx+RRJhwC5W/
         NoNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qJNxB4cg9C+SVcf4ggkbVUytE1jOlOuxdTSNZc36Kss=;
        b=CBGGckR5vX0O6IxMly82axxO3LJNXCgrOq26fItgnQ0Cj5GIIEmRwouSOSa87H48hS
         d5CvvFRJVM0B0yqHmcrFLKX/Lvm1Uyajb5ywmgOc3CqAAMM5Ov5dJeMCtLeFlXxNphCl
         P1yoQJZSnO08PakNzRGzaqlsmmpH1XWERh8OuMbQmsL7H8hUC3ThpDMX6AYwCcMe11+Z
         lT/WBKxplXAMFCVVWactaHsdkbWMz8h19Ky2mxI8R758jjxTnzaYo6v8s8wTpdnxxEmV
         /ibpZTZ8FUHxvySsX4J6mZU2BFxPGnH56kJewVg+lccn7Oe+0JVcGfhNb6LoEg4Vw4U+
         bTWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvWQEndw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJNxB4cg9C+SVcf4ggkbVUytE1jOlOuxdTSNZc36Kss=;
        b=Ur2sHJwydqNwXddDz3Sj/BNsvH7j7GJCAs7DmHRgwF2pIjUlDqUEscUNi3++sHV2QI
         eT+I9XKF3YU8lLo3lZYPcBna4DvaOW3cZUuQrTS1lt1ZGuefjB6WxCLF32WbRDBHSfzt
         X0tOziLeWv1kWjneDv0XkulGP+HdYvWYWznHY/HJhJlO9rdXTwEe4lUT/XqgNrwS6Cqe
         Ks5hnPBakjDgaOPFMtphr3jyZnAXtyTS53+RWs6iLq5wUcQNobcowsrp0PVfblBPRoaZ
         FH2DbEphKVe5sqhxpWO6xiuVlhPUo6xtFWPu59WymP7SDrrIsN63QWduRukllgTCSq4i
         brxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJNxB4cg9C+SVcf4ggkbVUytE1jOlOuxdTSNZc36Kss=;
        b=LaOmgKvv0hDmrqup2FkUyGoCKBRvUusOQkJkUVqyPo999cTGWC1mO81IV7Ay88N5hf
         mtjayvSk/w1FAAFl2VrlkhgQE4uZzTX0U0TWHSXx6Cw0B+Wgz/+EHZv97pfC3nxkrAOG
         BaynxrqDfsrN4NH4RNBkHktCK2KJWeQF62NvrWErHxkZow94mzhFPClgN74p8fis6Tvm
         Gva3BW9h5PKXjx1BBCyrvsa3g5g7tRjj8m+QBnkTtr14RSGEdUEDpPbBYajUQq09ZDWE
         ol3bn9fdCXn6Do5fWXf+BtBXhDWzaNnepMbfrfH7YdsP0LfQFLDJyUotO2iX+tAJgK9f
         8aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qJNxB4cg9C+SVcf4ggkbVUytE1jOlOuxdTSNZc36Kss=;
        b=s/rWpU9qCH1NvuqCBEoj4mnGqjxy17yaBAnTjd6ffT9SDESZiwed/Yv/z4AtJdmdd2
         c92LmZXJGe0EN2T1nsPfY86oLMkW0rvGcCS3Dks0s1Ersq9f47hgy0whG2F25FTuEIO0
         mJKeNkl86A3sfVSo6SxFqO73jRp18W7+XjSsJueR/ozqExLPdN2wEWRw+4rJiHpN9aKk
         R8T4pDQKIwh+qHSvJs8TshEWVEq3zylqIQwjLm9kbhTTLiDbDFHFyTjE6dheZpxJDZ5U
         OoCcJDL5Hq990OdpIoB+XWXCCVZWRYX0PxZemmzTAYFGx7ZAV3376S8bUGBFbnE4Q1On
         qgzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNP0Q9XhiafuK9wXjHjc76VSWKaqjqoAZxQmjmbKM6WHwFJB+5
	4Wt9kO1hQlj29BTcnPt9c7I=
X-Google-Smtp-Source: APXvYqy1pAP/rcsQst13Fuv2+h53EU79FFBQaQL0h0IKCS7vaNq2nDhJswwJanAWtTbVniTdBv0XpQ==
X-Received: by 2002:adf:e691:: with SMTP id r17mr32660056wrm.67.1565476929558;
        Sat, 10 Aug 2019 15:42:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f711:: with SMTP id v17ls3312191wmh.4.gmail; Sat, 10 Aug
 2019 15:42:09 -0700 (PDT)
X-Received: by 2002:a1c:f914:: with SMTP id x20mr19591395wmh.142.1565476929177;
        Sat, 10 Aug 2019 15:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565476929; cv=none;
        d=google.com; s=arc-20160816;
        b=RmVidQ5c5yeolKTm6+I2JVvyI3xBPrUdtJqYVjSRx9yDsc0zr9TMCPNZLjNHegJykd
         mrulkhiY/UOnw99Q8VQcVJ2k4PiogtcfCx6FZnDOTAJiGjM7CXrAGD2pvfISZLDK2R9G
         rXhw9u4ARZyBtt4rWnvMR9G9CEDM7g8Lb9j6xJPwwkW9tXq+w/0SBj8hWgyrTiSvuT6d
         G4IOjllzqDUBVbb3KHM4TB1o66Py5riYyFE8iB8IG9Ts7bfjexCL+SAdYWqOAV9BAA61
         /zTLSC1wiNL9FrgJNn2ISlFqwDAPYtgbyXqs4wz3fSlcyCsdfrwazyAhFTC/XuKU1abc
         87jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cm1cTZewDuKp3Wajgal/0P1FJ6bCpkxWTfUFt1xUXhs=;
        b=PiDc3aDRd3klsgTCIx3XH2iLXX455pT6tk3Z9S77j5XVDJv8aGSXNNYgXn9I5zHY4R
         Zz/dIZyUGBLFi1PkbYSYQxI3Nb6Q9hQp3BNOrtEiyWz6JeHA8uPJIzRNJ376bTORLw61
         TXpVxl8wh8BT+rJmusoV1WYw40z437H9LuIiXCI6y/ECasACOazhydPZOXMXQTw8qrVN
         hUlyYPiiHfHXzt22E+0jJJTZbP1aztGvSkXObTupb4bq3NuVjQ1YiIoZ+7W12j5q8xXu
         CQX+DvR0FB1VBM9j7k2BeUR6Ps/UYIrb4P6cp8SLgBGkYvATOJR8SqsCLKxnT7E5bzF+
         i2Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvWQEndw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e7si385120wru.1.2019.08.10.15.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 15:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id g67so8685042wme.1
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 15:42:09 -0700 (PDT)
X-Received: by 2002:a1c:f511:: with SMTP id t17mr18874737wmh.53.1565476928602;
        Sat, 10 Aug 2019 15:42:08 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id k13sm18578918wro.97.2019.08.10.15.42.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 15:42:07 -0700 (PDT)
Date: Sat, 10 Aug 2019 15:42:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [GIT PULL] Please pull powerpc/linux.git powerpc-5.3-4 tag
Message-ID: <20190810224206.GA56490@archlinux-threadripper>
References: <87imr5s522.fsf@concordia.ellerman.id.au>
 <CAHk-=whnEp5+EM53MaT-3ep1xjhrUqCdcfBfTF9YxByGsmDMRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whnEp5+EM53MaT-3ep1xjhrUqCdcfBfTF9YxByGsmDMRw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YvWQEndw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Aug 10, 2019 at 10:21:01AM -0700, Linus Torvalds wrote:
> On Sat, Aug 10, 2019 at 3:11 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >
> > Just one fix, a revert of a commit that was meant to be a minor improvement to
> > some inline asm, but ended up having no real benefit with GCC and broke booting
> > 32-bit machines when using Clang.
> 
> Pulled, but whenever there are possible subtle compiler issues I get
> nervous, and wonder if the problem was reported to the clang guys?
> 
> In particular, if the kernel change was technically correct, maybe
> somebody else comes along in a few years and tries the same, and then
> it's another odd "why doesn't this work for person X when it works
> just fine for me"..
> 
>                  Linus

It was.

https://github.com/ClangBuiltLinux/linux/issues/593

https://bugs.llvm.org/show_bug.cgi?id=42762

We're still waiting for input from the PowerPC backend maintainers as
that is most likely where this issue originates from.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190810224206.GA56490%40archlinux-threadripper.

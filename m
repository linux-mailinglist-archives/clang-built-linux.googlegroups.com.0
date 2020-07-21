Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNWE3T4AKGQE5FYUPZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 936872286E1
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 19:13:27 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id i139sf9813842oib.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 10:13:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595351606; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIo3P5TlLxnqRFykXCQlVrSgVhsBvP2ZyM8IIWPs8Xnt9s2ZmdrHMCKWwoj4ZI81cs
         MU1vwJkEqQ5H5At9uAWc0QzpM9R9MgwwBL+zMxAfit4Cefd4ONyMzNQARSfN6GBWOWjP
         PnHzwz2Dru58AlTj5MYWsR3Qf/JGushufffVRBqMrR4u04rk+GIxP71spS9CADj1qsp0
         e89lUikkeurGIlqDIj4M04DOuuAIFmOv96vZEZoZTG/2G6x0J/qQmTusQmwPPtkjAluw
         t199X/fB9TW93ycSEVfAvNdkwVOUHgLdSntYWyitjOeQilZy/EWWSakFTnVUSVK61VgT
         Sajg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=adfBn9QsD54OCEz/thXPTNZSI5P6YhlH9tSv9WztrPA=;
        b=kbBxFCH/G8yy2gwGvYHITK/KhLtKy5CuS4TyI7MNIJQvaB5pHwEa454bAGvPesKmCV
         XgqcgVMVQvg5KVs3iQFPKzBzx6RwYTPL/v9kZPUtMAvleUGUV6B/k4hAOJbkodCS0Zs4
         +8kRn1nY9fUzN1H1cTw/1F9bP58cSC1jROeuzZAPP7ec834BYOF58tisI1clhQ4tqreB
         Ay7sJv5fq7vDnwmKStM8ksp3vwHKKfmcWnMu0WQxRGAhfV4alQcyCBxQNcx3IyG4hvlE
         M95mjfJP8BukAk+44sl51TntZvsV/JU22m0kx+I80wH7HC+GLS+dJeMz5I8CGbMGcJQx
         JMmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qSfMSUQJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=adfBn9QsD54OCEz/thXPTNZSI5P6YhlH9tSv9WztrPA=;
        b=dY+UO2a0Ft6dFCRU+AWd9y5iZK8uk08GLU8RUSxMwH4Gro/ucmLxUMP8U5lvS4dFFy
         PyeVYDBjQTrmxBVwTK8+FgrdGseHNt3mv5spURlGjXVuglWeuljIm9qjaqMWBla5UnEA
         Y34Tm8xlEB+PwiE4g/5FMzNPM+7E/oE0eb5VJc8wkd8nooD/08RrAoZOG4jKaZQ3uF0G
         Duy0Clv9VtGMp6C0pI2d+r9ZuzhNTXk2LOW1iGHFn0ECVsIFkZDnIeYfC1N1Fh4UFehg
         kZDJqlACXUFiQjxb6RwUrivzt2EZw8oRcCOGD4OaLazgMVPB/dEQb/pP4mV5Vpt9T5Gp
         hFjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=adfBn9QsD54OCEz/thXPTNZSI5P6YhlH9tSv9WztrPA=;
        b=ZLXmsU/Tg+J5RlBBptNHd5ztklgkMCqr92eBD71Bi+qJ8MnE83GN1gOVaSd0Eh61nu
         CwwN8HGtQ8JCcjgk++k8H+TlHFRSikVEWlyfejP6ZSC6KPxzstQiwjcTkX5LrQ1f2Rrj
         1dufjyLzS2tPHG1NSj//J/cxD8viZ9tjMZh/qxQcK5NYQGTTOrUEXB8woUCfd5/SaSVf
         Qv2GZw+OXSpH8kUGtzxwUs9giMoqsuF+USrJSCSwmHiNHupAvk/eIHvELt7wYB+/fgUx
         KE6vC8C+94Y+Iamso+VsBj4fGuAi3IApD/N4AcM9NQESyqftWJDIDsvFELzs2zQ/W+hs
         aAng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=adfBn9QsD54OCEz/thXPTNZSI5P6YhlH9tSv9WztrPA=;
        b=H5bE+DTdEktJyNAgtmYXlxzW+KZe8mqgNhqTl5/tfU/g6cf9r3jtT6w39w0ozu7Y9z
         Gb3tq1m9Yf8NEwROZQmxNFCpYmGK/tOPJhMbrXX06QxD7eA49bJtTA+wzFnIbL+DeFH7
         mZlB9SN43YhXralOu1+bXIpEMAuZzjt3lCn1Eew+Y66KwgMhUyEZXLTvKc0aK5YT8sH2
         Sw4lxdDj/8GInN9wxbHWuz/8aYyBFHz89EC48e4p9g2m0rxxHpslKF9hj1Px/6NMvuJh
         o3wq/kkChpX7AIrDLw3+qAPu4TXXfDAEGmyset+34zxyTX4MBrK/AjaIx+b5w61PV+Nk
         4O+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cOvzRPvQWFKJgLPbt9nuP5Q+BvHeUI09djrqIkYoRMEyBD2LX
	qAoAcKmDgPYeFveQyWC6Aa0=
X-Google-Smtp-Source: ABdhPJw5tJNLajOzhuTLx4pr9DOKOy/5ZlIqHJZKpXD9F6QBb/256cXGdkZQDq9puKUGIvOi4YZfxw==
X-Received: by 2002:a05:6830:309b:: with SMTP id f27mr26051834ots.315.1595351606390;
        Tue, 21 Jul 2020 10:13:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c445:: with SMTP id u66ls3624160oif.0.gmail; Tue, 21 Jul
 2020 10:13:26 -0700 (PDT)
X-Received: by 2002:aca:c391:: with SMTP id t139mr4026870oif.57.1595351606086;
        Tue, 21 Jul 2020 10:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595351606; cv=none;
        d=google.com; s=arc-20160816;
        b=d95TXg95IPA7yoBac4as74okjewnUxn2yrpwR86bVhef/vTh5hYALInPPB13MMvcO0
         oatMm2fZr5NZry4wnE4AzegFV/fzuYZISDcRHq3fu+7PJ/cEbPIyw4SI0x3515U9RTbu
         jSi7z3OhuxJ4BAqASnLv9/TNtJ+CPL5bHOit9XNy41sTyPACxzgw03zJNnSzC0KFpa72
         tEQs2Y3rML0hdTUnYQphhjCcqGweMXJGe6/kzhjrnHTQDv0ADs6uAoc0UxkbE4Kq3Dxj
         CKibsWxYbRUnuU3Fq4A74RAkbHooQCVzi7GKYRfdCnW9Q4L6o9LlJ4NEX1RAAUxaKlu2
         7lUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZbVxqAmomsyhr+KEyYXdRet54/+siHxMMPFBRHCBS08=;
        b=0XnIVHAoYrsOJ6gBnHL9YA9FQ4ME0tJH/DGiYmF83WSy1QXZGxyLZvYbLg+W/W7YJM
         OmqRB0ucv3pUUDJatBPW4lWic5ytfWX7i3Fa/lk8T1HaB6cJYIAxtrHzWvf7EVKJJARR
         TpIersXd8oh65oHsyTYN9/FYyw9AqCuxWBRf4n2dhC14F5M575+DVL6bU9rDYu4ZKHHl
         uTkNhOVI8Ce6+ktn5LwlIUXuyqcINCIIS+P3L7Qo9goBGo5je2s9D9m6/Zkrh7gj0dQo
         F2aePGfBY+FhDs6TbEAHNCQyByKbp20bPhE+LpoOvXVdxdRTmdZ6URgWyOvHoR7PGrvT
         Q6Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qSfMSUQJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id d65si923974oib.2.2020.07.21.10.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 10:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id t7so9660117qvl.8
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 10:13:26 -0700 (PDT)
X-Received: by 2002:a05:6214:851:: with SMTP id dg17mr27965377qvb.235.1595351605715;
        Tue, 21 Jul 2020 10:13:25 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id h124sm2938013qkd.84.2020.07.21.10.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 10:13:25 -0700 (PDT)
Date: Tue, 21 Jul 2020 10:13:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org, Jian Cai <jiancai@google.com>,
	Bill Wendling <morbo@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
 cross compilation
Message-ID: <20200721171323.GA3327914@ubuntu-n2-xlarge-x86>
References: <20200721041940.4029552-1-maskray@google.com>
 <20200721104035.GC1676612@kroah.com>
 <CA+icZUW9JhZEEcXfL5bid7+M-Qtw22XzSm2x-JxW1bU15HJ6sA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUW9JhZEEcXfL5bid7+M-Qtw22XzSm2x-JxW1bU15HJ6sA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qSfMSUQJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jul 21, 2020 at 04:52:56PM +0200, Sedat Dilek wrote:
> On Tue, Jul 21, 2020 at 12:40 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Jul 20, 2020 at 09:19:38PM -0700, Fangrui Song wrote:
> > > When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> > > $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> > > GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> > > /usr/bin/ and Clang as of 11 will search for both
> > > $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> > >
> > > GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> > > $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> > > $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> > >
> > > To better model how GCC's -B/--prefix takes in effect in practice, newer
> > > Clang (since
> > > https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> > > only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> > > instead of /usr/bin/aarch64-linux-gnu-as.
> > >
> > > Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> > > (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> > > appropriate cross compiling GNU as (when -no-integrated-as is in
> > > effect).
> > >
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Fangrui Song <maskray@google.com>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> > > ---
> > > Changes in v2:
> > > * Updated description to add tags and the llvm-project commit link.
> > > * Fixed a typo.
> >
> >
> > <formletter>
> >
> > This is not the correct way to submit patches for inclusion in the
> > stable kernel tree.  Please read:
> >     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> > for how to do this properly.
> >
> > </formletter>
> >
> 
> Hi Fangrui,
> 
> your patch needs to be accepted first in Linus tree - among other
> things to have a unique commit-id for inclusion into any affected
> Linux-stable trees.
> 
> Regards,
> - Sedat -

You are not wrong but that is not what Greg's auto response is complaining
about. It is that stable@vger.kernel.org was cc'd but there was no

Cc: stable@vger.kernel.org

in the commit message, which is how patches get automatically picked up
by Greg and Sasha once they hit Linus's tree.

That line should be added above my Reported-by tag. Fangrui, sorry for
not being clear in my initial response :(

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721171323.GA3327914%40ubuntu-n2-xlarge-x86.

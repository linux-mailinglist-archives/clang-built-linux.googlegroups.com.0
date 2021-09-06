Return-Path: <clang-built-linux+bncBDHLTRXOPEIKL56YREDBUBDXSFEP6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C32401DFA
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 18:02:45 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id f17-20020a05600c155100b002f05f30ff03sf4080327wmg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 09:02:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630944165; cv=pass;
        d=google.com; s=arc-20160816;
        b=OE4DJvQdzkoUNakOavOx8FkmFCaZLfHKtgpF70s1TuWfqhXYu9zv9Z5PCv/mWcqbg/
         jrdRPRkOAmcaQmYtPoUEGlW43p384IN0VZvGpaiYgYW4A39W1q59r2t+08+FpYg9q4qR
         AZuna94MGRXKoTBYqjiN3Op4pJClrDEa1kQJvb/HLyHb/Whc74TxIkdkao2H7c26M6EJ
         gn3oQt38OVh7WHTyNdVjp8gzZpkjmDS6RU2zSuScek2ZmMdjkcKT3TtNBmInLH2gfKU0
         Mxne+SdZKTmF+MYbA9OjytOcTIEQZ8ywchcUw7umKXw3o8eZexlWalLgOREONpIiuzMr
         P4pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4fBqV7oz7PtvvItYKiq0gqqhixmXv1ggF8ALAXiWfro=;
        b=mqVMWew6TNg0wAD2pT3OXtDUmkhQa2j7IKwDk7xYS6BzciTiJAv9yxnLi46SrFFT0v
         3BtTNnk3Wj45tS3cGtrbyflDQGQ3cHTT4QFREs4F4D3BzQCj5wD3dmVIptI7AC8Xsuvd
         Iui4Y67GL8EGIlLHEQ7bd9U37fuYEO1jGMKUIw6tTY53SPyV3Xm4flAcM5+hJMQOTNRM
         RvKOInmke3XswWXbdNUXeSF+V8x7HNFHJkPK+6itZItY7dkG/YeLAaVm7YuSAyi4yGZP
         Sa8skpjQdV0Czx/KNZdRqM2PqsKC8jJ8pz2mOkvPJ/4jf9r14ZfvRiQzZwTT5Pe/8QUd
         iU1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ohhc7LBf;
       spf=pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=adobriyan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4fBqV7oz7PtvvItYKiq0gqqhixmXv1ggF8ALAXiWfro=;
        b=DW7PMTPtAeJ3Ni9IHedue4NfGPDtfJolDikul0LcmiQFDBQKrVXGBlZtnQkCOQmf3v
         wFk6P+AI98GmFgKZ8/LAWhLbRuWSWMnLzegl5ExhxR5xQdDKjn7U4oI/CXmffKoZR/yc
         uZRW96rmsBrVYC29+nMGHcMoT3+CVO+w+bZGwAmhhafKsl7w9ftplMLv7oA9F4YF53JJ
         zq0eWzJPXoeeTp9BCUMSId+IXXEv8xSxXNiOfwU13V++atLVZyOcTETlx65g9s0eNzQv
         Z6su4sTrzomlVCZ86Kk5rPpuElPmIY95YWDiBwLSTphS2Pvbrpt4qy+eXdrRv1dRRc4+
         5JBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4fBqV7oz7PtvvItYKiq0gqqhixmXv1ggF8ALAXiWfro=;
        b=DGtLtVp8HfKlaf0Ln2NdQh30aNj7QRaHTfqTf6mStY2+2wAkCtFk9AHF5rmw0SkGUU
         vAQTmZ7FvizybEKcByjH8Zs2xqpwka2m4H70yxR+9rzKjtxzSdcgFG0ObNe7gH7NW/Q8
         M4iLmZBT+lUWaqICsmczWmp5r+mCzgz6H9fg/wdGSGtAKPlb5lMhhNxHPo75210d5A3Q
         P8bLgP+E+1v4/lmC28fn063TNgu6ZTJUc273pX5SlamP9CK5+KtoLJLIhJxZYw3r7ul/
         BQGYkeAi9f8GRIiyLVYDk7OiAcwdu4gf3nINNLEZhEFjSFQLXVRZ+uPQFEGOy5tsMWMn
         WcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4fBqV7oz7PtvvItYKiq0gqqhixmXv1ggF8ALAXiWfro=;
        b=OEK5ZVpHhkr/w2uNOy8i0d2g7fYN01nxx6gzjpKKqtrp6U40ODsLATGTcr13WCsY5a
         JEobBzIjLPBuKTXrhteDNYqHkqLiiY8AzXQrNdnClV8A4Yl+W2QwSpiGKJI6l8B1FVe/
         Mfdd6fadYYMd4unnA5+0sUlm1k2IzqxiNd+HDyzntK5CLCTvXlKSn9cry5LpzCGhN78x
         soV//L8atkW4BTKUaFn3dSVa27xrlBQXe9q7Ecs931VHec41juXRygcaQSpGhXMj3IDz
         jvQwQb96Dd8yT0ROXoEleVWI6es/AioAUDrbxohqdyNvq7UX+ZC16UAPWVVsIvnq5uoi
         m91Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311bV0eVbUWuu3burPZSbeNrjArJ8e62i+jcRWmBaC8WjioaYy6
	SvYgE8AcibfeDL00JLu+GS8=
X-Google-Smtp-Source: ABdhPJzZsknPpG8/RXyU/XnD7g2bkwfWchYRy8kHeX92ioJ1p3HBzTijSPd4ntFTDU4sJJ4M7JBnvA==
X-Received: by 2002:adf:80c8:: with SMTP id 66mr14370014wrl.65.1630944165208;
        Mon, 06 Sep 2021 09:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c2b2:: with SMTP id c18ls3599596wmk.2.gmail; Mon, 06 Sep
 2021 09:02:44 -0700 (PDT)
X-Received: by 2002:a1c:491:: with SMTP id 139mr11909063wme.137.1630944164284;
        Mon, 06 Sep 2021 09:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630944164; cv=none;
        d=google.com; s=arc-20160816;
        b=QNxeccdFDkyUiQaFGeVGOPS0gpCB6EBNZrKZ48sSM/Sm1EQaKjPPLxKDDl1B31d6LX
         veZFkPeyNJhrffiUOuAm5YBj3L/UCuoHVN0pwaAEONw+9dPb7wVWyDPJRYzzSunJZL/0
         x/W3Z+tISobSchnX9MT565nupqY4wwcFfnCmsEBGuMRXPfRkQH3bJ7KojGDOQuiuM1X2
         ouokRNPC4uaBewWIFrv6bTJCKk1AwnecIn1z01vCE0yvmxH1uNnX0q4TsjdBAPO1d5KK
         lqaV6XBLOGKVuX/itrZph9e+AqLxjAfcHl+lyPPriTl0qMsqbWCVmrbd7/xWfPYyyotr
         O8xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aJurJiBEcqKhnCeRcasboYTcIcnrqnyGP+4g7iS0saM=;
        b=RzPRKVLX0wF30/qPBKiskkFy7FLVHjNrPMrpyibqDlRj1JtUBoXdwz+KMCnuzZO1KQ
         Wqu8tWk5bUJI1VNPtu8byDp85pFG+9gzIW4fkCbqWFr9e6IRSREbuRsNTwTZZXCylg2u
         TE2tLZG6cR2UeHolm8NnolLkoUpfgkjI2zAPUS5IhPWyGeLAPl4D4A3Dh+Q65k5LLtGe
         M9gEi++QpYjFhcyUpcqwCzUGiKGIAqOn7Bp5zyZuYYfXJKDY0dJPmaSXphcN3bfw850+
         JoovA6p2F4iLCvWEGrvihySdzAQ0TWVlgJhLWndoTyTaPagibWKrEJUkhRkWtxCPASdk
         a3Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ohhc7LBf;
       spf=pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=adobriyan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id o18si18342wmh.4.2021.09.06.09.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id i21so14362608ejd.2
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 09:02:44 -0700 (PDT)
X-Received: by 2002:a17:906:2a8e:: with SMTP id l14mr14037026eje.321.1630944163976;
        Mon, 06 Sep 2021 09:02:43 -0700 (PDT)
Received: from localhost.localdomain ([46.53.252.172])
        by smtp.gmail.com with ESMTPSA id d22sm4260617ejj.47.2021.09.06.09.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Sep 2021 09:02:43 -0700 (PDT)
Date: Mon, 6 Sep 2021 19:02:41 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <YTY7oYPJPYstU1+f@localhost.localdomain>
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
 <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org>
 <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <87a6kq2nze.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87a6kq2nze.fsf@oldenburg.str.redhat.com>
X-Original-Sender: adobriyan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ohhc7LBf;       spf=pass
 (google.com: domain of adobriyan@gmail.com designates 2a00:1450:4864:20::630
 as permitted sender) smtp.mailfrom=adobriyan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 06, 2021 at 08:54:13AM +0200, Florian Weimer wrote:
> * Linus Torvalds:
> 
> > On Sat, Sep 4, 2021 at 8:19 AM Florian Weimer <fweimer@redhat.com> wrote:
> >>
> >> In any case, it would be nice to know what the real motivation is.
> >
> > I don't know about the original motivation, but the reason I like that
> > patch after-the-fact is that I've actually been in situations where I
> > test out self-built compilers without installing them.
> 
> Does this really simplify matters?  Why wouldn't the gcc compiler driver
> find cc1, but not be able to pass the right path options, so that the
> include/ subdirectory can be located as well?
> 
> > Then it's convenient to have a completely standalone kernel tree.
> 
> The final patch in the series is here:
> 
>   isystem: delete global -isystem compile option
>   <https://lore.kernel.org/linux-kernel/YQhY40teUJcTc5H4@localhost.localdomain/>
> 
> It's still not self-contained.

What do you mean?

Mainline has 1/3 and 2/3 now:

	c0891ac15f0428ffa81b2e818d416bdf3cb74ab6 isystem: ship and use stdarg.h
	39f75da7bcc829ddc4d40bb60d0e95520de7898b isystem: trim/fixup stdarg.h and other headers

3/3 is stuck in -next:

	https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/log/?h=for-next

I'm not sure why. If the patch is bad it should be dropped from -next
as well. If it is good, it should be in mainline, otherwise more
compile time failures will happen.

>  And it seems that there has been quite a
> bit of fallout from the removal of <stddef.h>.
> 
> > Nobody cares about things like <stdatomic.h> They are completely
> > irrelevant for the kernel, exactly because we've always just done our
> > own, or used __builtin_xyz() for things.
> 
> Apparently, some people care enough about <stdatomic.h> to prevent its
> use.  I still have not seen an explanation.  Maybe it's because we
> haven't Cc:ed the patch author so far (oops).
> 
> Alexey, why are <stdatomic.h> and <float.h> so special that you called
> them out in your patch?
> 
> If it's about unintended use of libatomic, then maybe we should work on
> a proper compiler option that also works for __atomic builtins and the
> _Atomic keyword.

stdatomic.h isn't magic really. I looked at what gcc here ships and
found these headers. Clearly kernel doesn't want alien stdatomic.h
injections because kernel has their own atomic model.

Kernel doesn't want any floating point shenanigans either.
I think I saw 1 instance of "float" usage but it was harmless (some
macro which is converted to an integer at compile time)

Kernel doesn't want any future stuff either unless vetted.

I can only repeat what I wrote when sending previous versions:
kernel clearly isolates itself from userspace, -isystem merely step in
the same direction.

Other direction (kernel uses what standard says should be available) is
fine in principle but it is not my decision to make. And it is more
painful, just try to s/u8/uint8_t/g and see what happens. Or, worse,

	#define and &&
	#define or  ||

Just try it.

I also want to note that kernel version are slightly incompatible,
but better!

* bool should be a macro (module_param(bool) breaks) but it better
  for everyone if it is a typedef,

* true and false should be macros, but they look better in preprocessor
  output if they are enum.

* SHRT_MAX is of type "int",
  which is silly because typeof(short) != typeof(SHRT_MAX)

Practice of many trivial headers is in general worse for compile times,
because open/read/parse/close can't be faster than global -Dnoreturn=_Noreturn

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YTY7oYPJPYstU1%2Bf%40localhost.localdomain.

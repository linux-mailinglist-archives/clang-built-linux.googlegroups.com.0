Return-Path: <clang-built-linux+bncBCIO53XE7YHBBUWXY34AKGQED3WYCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 711A8223D3C
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 15:46:59 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 64sf1723113uay.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 06:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594993618; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixz29Y3N4SqNbKAGJ5HT7FavHH4cDzYJydPIAZJF6I61m/AWEmsN3aLF9r0+TNAIFK
         dqXGpMGA/+uB6Z7caSIhTHOFofOep0yA3AMQElnAtcIUFnlklXI/DlEXcAPsiM7L1asO
         9zSBKoygpRuNQqjThMFpIJH63EIiL/NZRC9gwjLziHIpxi27nVWb6klt6MtHN/I/FfDn
         RuvNntodbF+lT3RaAlzBfX0KTney7jYg5vuO4RAxvfOuv+qFY/jMqknu1tLUHegwhwJb
         lHDJoEb93plNBpFW2hcSOM/T1yZxMr55FmfUZ6KNlAv6jus9PThcLLIv9DPvihBZuld/
         AunQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=BnIZyZhSkjTIz6Boklhie70MPbqm8FYqlhm4SckP5cE=;
        b=uJD/88QFslrOLjUlpPY9h6ZEYMyN119MXBD0yUEEL1BJblu2DyfrI+xlpujHtuUnHd
         9WbvzChL50j5idVcmDXvRYXPQcGNMNIt/3A8tVF8yszMOqUUqqLkLEdxSoAG4LGWLt4r
         /Z5vME8s82c6+3s5V2qsLjFQh6o+3eBp+ej+wOYUk4UWpB2VpjF0Dm/RAHkrbS4CPuIb
         Pi+3kiHI9DpTqWwReygL6IZNmexFw5J43zFj+IQGDmIPAlA+HJuuNCX0zOa9lDmJXsGU
         2x1ncnZg8avgJ5oythdwfKF38aE8HdawGL4Hol2Ek2QjyFqUWULGonZivGdPmBDdM0xV
         2WvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YW3OQKQA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BnIZyZhSkjTIz6Boklhie70MPbqm8FYqlhm4SckP5cE=;
        b=EVL7CGOZj5vPB1t1giZ0xCBXLc/ZVUELO6/yNoGeCa90bbNouPCuHAV7j8KNzwis+o
         eDBbxDeIsEQBvaDftT/22vA38jWK63rd2gAfZ/OeBT/MoO8h2u3zsF4h1uOEBKZ1+u0u
         4Z4hjIp4Kae0WUgZd42dGo6/cShtnM3hFln+8xhElIdFUcs/HfW9WK1cWOYdzkXOcSFR
         rgFsv5XGvJPMlUNiX+IDlTx0JD3A5Izo6ISlaLFANon0wds698EAfilzlZHwjMOGJ64k
         ifmcmI0w9/yvgR0HL/9kDRiLt7O9vVdaZSTLftgspnNFE7OL420gYLu4oVhvLyavDwVW
         10HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BnIZyZhSkjTIz6Boklhie70MPbqm8FYqlhm4SckP5cE=;
        b=FmpwfjaMMe/7UAlbt9pL9on+9WwmYYgiV9n/HStUfArRTAEVbVsKTVVngdvVzhf56M
         IdpVdeyKM3eTAxNXYe9DpCPCoss5u6iRx945o5LGoOVupt6wEXYT8/iCumn4F/GFysrE
         1Et6OLCZO79h/XF10eVykhGwnOtQRTF8mZ99Xg0vA0ESs6DZqjD13PiTOlGjy219oKFk
         4uXetMTvQtTTGE0OgIaKO3ZpJAvdjBpUKSeMRRyTtb2VrNQAmvKj1tEamQRindNRFUuN
         D4SDe48OPo7iZJrOwVTC6Eb+BmGBq7HfD3FPqDKTNrEuUJWu9v2cy2vDxVtN+AWWzRXu
         c4MQ==
X-Gm-Message-State: AOAM532Ta5TNhz3z7wP7rDh1Wusl9BKKAJl4wFmmPvQwFawYx8vksB4i
	obxz+s3hC5c2yZAC1zCqPKk=
X-Google-Smtp-Source: ABdhPJybz78kuXqke+BkMd/RUGJW9GAGb6ZDBE2e0QzWd7kFuoOWJKRpBuXBehtdmb9Cl/bDi3yOzw==
X-Received: by 2002:a67:f987:: with SMTP id b7mr7039328vsq.183.1594993618492;
        Fri, 17 Jul 2020 06:46:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:904:: with SMTP id x4ls1145793vsh.5.gmail; Fri, 17
 Jul 2020 06:46:58 -0700 (PDT)
X-Received: by 2002:a67:fbd6:: with SMTP id o22mr6818091vsr.120.1594993618054;
        Fri, 17 Jul 2020 06:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594993618; cv=none;
        d=google.com; s=arc-20160816;
        b=tgIVapcC5XfMy61xXv08+26r0CWyUC/6g2HyvlFvNOXqHBO/6XJrXT+GpBhPmtEjpF
         DgVu6j1gLGFZ3dKkKEA3vfC9lZ+Ax79C4kAw09ryTgwK/65K1N5blKNKmvpqtHmgspKY
         FztQy9mDU56Sn3pKfJ1K7CUVnoGouE8PgR5fXfKTmUfoT8u7752gcXT2kKAsmuy9aksV
         LMhzueJWY/sLIoZCK0cSu4zbsMnH1iS5Lr5/wYhFtz4S017BkQ/00tUl/s+BA8xvkTsJ
         RfnrpxxumrU+v58+VpjTYAVeSjidLIDBwUvrLbvF7GO87bTEkIpJ/p0Jec2zfe0zuPx1
         uucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=5P4OIwY9QUK4h9roSSRi0+Ffy4n0VXQDJm6kBXWOS4s=;
        b=m9HFFTXfA7Z2BW+AQGLi6xzhI82GTGA26IfEI/1n4p4zh6k1GTijGxSct6pJkOfNas
         EGstFRTybmtSE4Rrzu6OmTrzTv5nvkbzWZvWFOyZ9TH8AjvQP6GpQKKo8KOCW6ogTide
         XOnP2OYy8O/h6G6jRzn+sfsV0NlJGozstNd7Vy14z9U3fVHNp9mI8JW63Y+twRfa7IAL
         Vfp1OhFZZ13mrivo2GnLMBzDpBg29j7b93VVA3obPQ7MiHJfx0euujP2TVZ5/JnWdXBm
         IzzUrEG4WwbHehcR1JcDEHtN7Jpljjyk1tmTO2l6bSN0C4Lpfg1n/r5mlItJ1oL9Vyve
         vDmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YW3OQKQA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id g207si292419vkg.5.2020.07.17.06.46.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 06:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id e13so8756619qkg.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 06:46:57 -0700 (PDT)
X-Received: by 2002:a05:620a:a56:: with SMTP id j22mr8716602qka.193.1594993617582;
        Fri, 17 Jul 2020 06:46:57 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d8sm10497586qkl.118.2020.07.17.06.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 06:46:56 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 17 Jul 2020 09:46:54 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <20200717134654.GA3187880@rani.riverdale.lan>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200715004133.1430068-1-nivedita@alum.mit.edu>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YW3OQKQA;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> The compressed kernel currently contains bogus run-time relocations in
> the startup code in head_{32,64}.S, which are generated by the linker,
> but must not actually be processed at run-time.
> 
> This generates warnings when linking with the BFD linker, and errors
> with LLD, which defaults to erroring on run-time relocations in read-only
> sections. It also requires the -z noreloc-overflow hack for the 64-bit
> kernel, which prevents us from linking it as -pie on an older BFD linker
> (<= 2.26) or on LLD, because the locations that are to be apparently
> relocated are only 32-bits in size and so cannot really have
> R_X86_64_RELATIVE relocations.
> 
> This series aims to get rid of these relocations. I've build- and
> boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> has other issues [0].
> 

Hi Thomas, Ingo, Borislav, would you be able to take a look over this
series in time for 5.9?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717134654.GA3187880%40rani.riverdale.lan.

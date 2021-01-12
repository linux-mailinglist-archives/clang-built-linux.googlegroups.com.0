Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB3U3637QKGQEMXVFS6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1752F2E6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:54:23 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id x13sf890558edi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 03:54:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610452463; cv=pass;
        d=google.com; s=arc-20160816;
        b=XrsrgyiLoIrZyOwp9bcOZHhNEWb+bJr12IjIgSvKLhvxe9a+cVtI36vOqGflZLJZxK
         8HJi1i5h93IKlrU2B3c29hZu+BusjPGB+dabbp5p1HyUx0zMzgMNdp2k/HLb6z+oMvKY
         0a5XQk6hKkjzCv4AbQK/hV+VjOKxoKAjyW/gjZ/t+uWFjqTqACrixXasDAqz3IpbsjT6
         yQp9HRbw28Lu28hIKbIaB5TT2QDvi+JgrV0ZPpF5Y3UC1ekZgdwVZOERFd9NEkA1aPsC
         a3zWdT2I/caOnKpeIwtvzEuez+3uVbjARM1c5KlxujRl0i87vHUp+ncnpFqW1ZoKkKj3
         h01A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ltl/3ZlmEzK0vt4IrjfLGHfGZg3FUN8pEkjkK40k6Og=;
        b=nXQ8m+wQ0RnjmIPmCPaN0oKhOQD7MZ0XAP+Qrw8GxS2L09zlz9GbCk68rz4WCuE3D+
         hInKb/7q9CE+GolhBPybEdx018R2cIf3FCazzwjAqS5aBSD1F9c3WZlSf31HN0TSQskK
         aXy4VjlONPZwc/T63TUPUh3yj5IkXvTLvk5ti7xvssnynmfG18f9whvfF5P5J87dV6ii
         ZtqA45rt7LllcapRVqfkrALBihYbhq4Vhe+D9uRma0G3INBfHP81a4ftKsh45kozMDZs
         B9XZtXgRIsoMFSgugk1gBgqFcVrzucH1FimLt2xnmU2WCOuA6JO+Ow/+jHF3duMharZN
         fnEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=pso3UWjE;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ltl/3ZlmEzK0vt4IrjfLGHfGZg3FUN8pEkjkK40k6Og=;
        b=GOJ8sFqtdLss7GlrvOnK6GKFKQn4IXLYX3dTADeRyO1SGILkIYUt4s8el/LE/R4EwU
         ogiMswdRYla3rFEEfsoqV15S/Y5yMjJt5yPbJ0w75xv88/PQGZgKDYrPjMMpCknEAxnG
         +b+8W3oCZrK2fDgJSiqLWD9ehUAD+cHdYxXdktRjLIvkwbxSST4SydlyjN8HVjuEIMbS
         i8kUAR2uGFZ+eOG3Df61PMmm5ZD9CcU+0rqt+VWcpYKejpQrD/ovx1XmWesduuDAjizi
         X65Nx3nWN1bXjpzVYm6JAOA3z3gG5e4TSkTRP4btxfwlN/FTJ32hz3yHUMH9rWy74PxO
         9raw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ltl/3ZlmEzK0vt4IrjfLGHfGZg3FUN8pEkjkK40k6Og=;
        b=q6yyIpkEgnA9u5kRoz8Yc3DuJJ3ESyseMoKbI4Jtub8RXTfR+rxQuxltf4kf7OKBW7
         84iOJ+NiJ8SQAJWv9HaMwztrgvF+CSMvTEPEQzgR4AGUWYo8LE/KjTAbEzYCxU3/NC7X
         tKqlDvvH30mc7BSzaWbgjqtyIrRSPHf2QaGhmmFltbGGDIhjde//aYxStzHZvFbKdvqa
         0DISN9v0tyZHtYf0GkTJftO472b5lPKoTj0s8MpAMVp7Oz+yjcEBraRFI0vXGvlDJXw1
         3GEhyGYyHaoP7OIv7fuK8pwQb6sLm0jEyVvfT6H4Hy+2il8ECF394Xa+qYbvYvwveYdy
         S1CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mDI1W7aiqTNpA+UelVi7WL5tO4ZvTx9XwePfBhLT/unPGJday
	+hfc+Ig/P4AOHcklSTyWl6w=
X-Google-Smtp-Source: ABdhPJzJ05pZsB9Ro/3mzI2lKP1IP6BUq9O3ABqaK24bZEW0z3tsra3S+MPOit09UgsuTqayqb+tAw==
X-Received: by 2002:a17:906:3ac3:: with SMTP id z3mr2908054ejd.449.1610452463049;
        Tue, 12 Jan 2021 03:54:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls3123319edj.3.gmail; Tue, 12 Jan
 2021 03:54:22 -0800 (PST)
X-Received: by 2002:aa7:c253:: with SMTP id y19mr3037284edo.179.1610452462248;
        Tue, 12 Jan 2021 03:54:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610452462; cv=none;
        d=google.com; s=arc-20160816;
        b=GIEue4uA92Zh+zY5AcSYJrLKYzHChzVBYWfJKsmZI+tdKkUo8TQDUv3JmCh5sRKusq
         db+jJj599ubXmcnzt9lm/Xs2NIvlhjbJ0lRT4+AnZw5aIBC8Ao5VjWgGixHcaYAaufiM
         6xsboOXH61UEZ496upIfwXF9PiUr+tDp7vQh/3NWIG5spht9bQ2vzznHTEA/DsDlvOYg
         ZiAXpgXKhWdHq5sBY9GnYzMTGzwHa9d7HI+EjJJvQztG7ybPj5N/IJUj/8mUrUs8plXV
         teEAKhxUyJ0CVaRouNj3oi4ryEXKof17BrW5140iaThrawvG5fyXxhr3o7gK6MsAb/Ye
         UM6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pbmP+Y+nQ4eRzxNH1AOZNvl8RJ+TeM4Bs8STiGzFims=;
        b=vA7/MeDWFKBJHbpUJVHBiDPh//b29gOtQuA14Dpc3eVwXv9NKXhbDBYrkgfzzzOMRz
         ltxinhfq5YXbHKn8xyopUVzCAtIPoV9Do+1Z4P4DQ5Y4eQOAZanw0L9sxHsTM9AwxwBi
         JWDKBQx3Deb7s2G9OHuFC9aww754jlRdNnYZy+60/tFy6tGN5VnAmqBQ0x6CCzpR71Am
         b9CS5sZGwCODKf15e2jcYdtsPhS/DDMyU2KPzj9BSMFj2b/v1h69Dny2M7LdDXVSPG4m
         sGE3yf3Qs6vM5X971Qd64D5JJ4O7d2XfyMhe+GsG7zvFrC8JvMeYVks3QhX1m3OeUBLG
         bBVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=pso3UWjE;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id d9si158831edr.1.2021.01.12.03.54.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 03:54:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0e8c0026b5c8bc02f060b7.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:8c00:26b5:c8bc:2f0:60b7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 976E11EC05BC;
	Tue, 12 Jan 2021 12:54:21 +0100 (CET)
Date: Tue, 12 Jan 2021 12:54:21 +0100
From: Borislav Petkov <bp@alien8.de>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	X86 ML <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112115421.GB13086@zn.tnic>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic>
 <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
 <20210112010010.GA8239@zn.tnic>
 <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
 <20210112015952.jdystnwkvuxsrwa2@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112015952.jdystnwkvuxsrwa2@treble>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=pso3UWjE;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Mon, Jan 11, 2021 at 07:59:52PM -0600, Josh Poimboeuf wrote:
> Right.  In the vast majority of cases, .L symbols are totally fine.
> 
> The limitation now being imposed by objtool (due to these assembler
> changes) is that all code must be contained in an ELF symbol.  And .L
> symbols don't create such symbols.
> 
> So basically, you can use an .L symbol *inside* a function or a code
> segment, you just can't use the .L symbol to contain the code using a
> SYM_*_START/END annotation pair.
> 
> It only affects a tiny fraction of all .L usage.  Just a handful of code
> sites I think.

@Nick, this belongs into the commit message too pls.

Also,

Documentation/asm-annotations.rst
include/linux/linkage.h

would need some of that blurb added explaining to users *why* they
should not use .L local symbols as SYM_* macro arguments.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112115421.GB13086%40zn.tnic.

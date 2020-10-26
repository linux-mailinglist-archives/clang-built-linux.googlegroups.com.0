Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB2WM3T6AKGQE2Z3XFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C8D299731
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:41:32 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id s4sf6018317pgk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:41:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741291; cv=pass;
        d=google.com; s=arc-20160816;
        b=BTDGYD0VYFt8Bp3IxT5l0SOIzIOPU3ZFSCo6nrXajNw3odATCB6ROhlUukR7ngC8t6
         5gtJCG6esvs8eW7kbVc1B26JbySyTwCX+7DdMTlzq6XQq7fyne6GfKm745s5dyGI5VFy
         e0KUJQDwEH3JqjqxGltW/0Yq/99exMlBID+MKtASvujbmM94wbWT0Y6ESy8VaT2QLGCx
         ExF1+cuB7Vh8lVTADKdP+C4W8flStVrxTVd8L/gOY+hK3RcJe5j12O/LwXDqMCbSVVAP
         iXDygIzKUMIbO992fEStN9Er7hJ4zW6v+NnLj3AP79LRSkXWzg1HUKygGjI8FfH4oOgU
         LFeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8cks2HsUB2TD9muTCAX44yb56ElzJbP+c7f7BAe76Kc=;
        b=TDUWAnUbAVeZHe/uPcZy1D65ekr51aui6e7t7gCEtD8JWydGkSeKiz3fbAurT/C+X/
         1rLe8FOgTJuHtB9P7AsNSRRcQDM3T/4AnFJMLUcTNEnEDwSBHF+Xf7VPXPi2zEUCEA7X
         dtNCTzaSvbpg20PgCNs4lHSLQZT9UOH/UWUHpgRwfoznbnTcJjQ4KDDFnWvqZ1fL25nx
         uNsw82eXzR9TD4R9Wv4Vjgflx+6CEOWxILjQOziM7W0xxWsjFefQ+HIEQ/EyQzFyrsxO
         xwSAkzsBUYkLxNa1kWsR1PPUo105jO8izu0XmfBnMKFxSa8Vj1iBXadMISziezJJMoMo
         Cvug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g6RS9T7l;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8cks2HsUB2TD9muTCAX44yb56ElzJbP+c7f7BAe76Kc=;
        b=GOdQLRVkDEX/GsSFTBKCIGFj5f7GnJqWHFTtzzb5n42NclO9KBj1oWpGrA7AORbiZS
         d9U1UPeo+w9bCZW8h2GoyMB+dFByIcCliiCjNtR3CFLzBt5ia0dB5gADB1nhjCjdgxfX
         m26RdYwIQKjCG5TVgD2RypOBGR8aOVkNrOoAuLQGeUoPRCAEFDPO75T9SJh9tOFApMT8
         kmND+Wy2suCi6kj44eJknu3I74fwvXhk3ngmUg6HNrbDJB6KnoVYG5bxtNTyYeQswcc8
         XIV4/uV9/BGvPCXYUUdwEaMp5NDk4imKgvBaHHPQzBKKxnDC47ChgxSOIQbE379r/pgL
         axVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8cks2HsUB2TD9muTCAX44yb56ElzJbP+c7f7BAe76Kc=;
        b=tP32pzSJkGuDFb5k6M4jNsZdYvDPBo+7zLkmUCUTNxPaPPODjG7FOVJd0Foeaxb+8M
         +rp6aLTRb2wzdKmni755eQgk6XjU6XuhLyDIYzsDnhTBgJ3VJl/QzENlcSCKNQrK4nce
         MCd3/QDJyOreTcCn5+pT7kxYZXNRL/lkNXrTu9pErfIi9/QxF232DUQQ8JAzH9XDVOhh
         mpNopJj2vJZa5+uWkc3ja6YI7L40P+/8ZCAK9nWW+74lhZLrrFDbHNiznt8Ojs1Tzgqr
         99D9TeWDpIQjwruK4DMNK8oL6BcpQvRsZCzkqK2eWiTrKM/nK3mdjeW5F8yPF6OBeTeA
         8r6g==
X-Gm-Message-State: AOAM531sHeiT59loj3kx1MxVihV8m2LgTuy9+ACU9PEb0CSsOT2IYhSb
	cq63O6Bxr9CNJbHHBRULLnM=
X-Google-Smtp-Source: ABdhPJwYRHfBUTb9Z9qY83d3vVcs3+2YHRBV0b1l189HIaRBYgMJewvruaTKhFzw/WD7hbLfSfx+ug==
X-Received: by 2002:a17:90b:fce:: with SMTP id gd14mr17591485pjb.219.1603741290893;
        Mon, 26 Oct 2020 12:41:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a0c:: with SMTP id v12ls4829413plp.11.gmail; Mon,
 26 Oct 2020 12:41:30 -0700 (PDT)
X-Received: by 2002:a17:90b:4a83:: with SMTP id lp3mr5754913pjb.138.1603741290161;
        Mon, 26 Oct 2020 12:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741290; cv=none;
        d=google.com; s=arc-20160816;
        b=EX2b0/Ex8RTQoRBCUCGOQ7JIiDqcztnnrXqYbyyBBvcaciw2FvOswXE2QkHF3IxHzu
         6sziEN1gRQirQWkr1GKSlxfnJ+6cZ/eKDEzx686mJVwxh5m+D6QlkXnrLUqAk7vJLpJw
         fF31Io+9Ln/d/v0RVZkwauFOb0kvEbvrxbTCHtm6A61FF+7jnlmQOljF0cH63gPECQ6I
         XSRZyG1YLZjqNfHzTKOaCaGDh1QYQu6sjFYT0jWfqvgw/fyT4YaM23f8Iq3zzqfzfQsf
         tmCww+iEw7zs4snI5Y7iShfu9AMW4ZN8KCBdZtO3jHvaVB7y5RKSF8R3BwayFumrp+jS
         /yOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5UMWGuOLcjC1cO+fKd8FsBCsk5aBoRgWF22+6G/UdwY=;
        b=j6e609DiGMXfezJGBHkcmULJeYi8sgabK9HbimLHEAwl1iIu8O/3BcWM5dq9jmXWOC
         oq0N5kzrQBLjYMOhdi0ifECQ4fe4zSyLcVym3BsQMHF1/ksSGCzjnbNLYPh+Uo+7RjFj
         DrNIoN6HGi0BNq/LA9yeQkbSw9C1P/QpRiTENKcXbpA7LQCoSTlhhzILb1dWrN/E3r9s
         9xLqJsFh7fFSIbx8k3YlzM7NFoswBdDfVXcYTS8L+5EQC0UfaolMM9ADdzZ/4+ve3Ss3
         /p2tLjtbzHAFei4oi9L9kVFwy5lj8Ma0tpqQuSG4rJMvsx/ug3NaZKrLck03gYEGKc+v
         qPew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g6RS9T7l;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t13si621530ply.2.2020.10.26.12.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id f37so9071785otf.12
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:41:30 -0700 (PDT)
X-Received: by 2002:a9d:61:: with SMTP id 88mr12036238ota.109.1603741289548;
        Mon, 26 Oct 2020 12:41:29 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id t5sm4032472otl.22.2020.10.26.12.41.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Oct 2020 12:41:28 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Oct 2020 12:41:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
Message-ID: <20201026194127.GA106214@roeck-us.net>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g6RS9T7l;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::343 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Oct 21, 2020 at 07:36:07PM -0700, Joe Perches wrote:
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.
> 
> Remove the quote operator # from compiler_attributes.h __section macro.
> 
> Convert all unquoted __section(foo) uses to quoted __section("foo").
> Also convert __attribute__((section("foo"))) uses to __section("foo")
> even if the __attribute__ has multiple list entry forms.
> 
> Conversion done using a script:
> 
> Link: https://lore.kernel.org/lkml/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com/2-convert_section.pl
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@gooogle.com>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
> ---
> 
make ARCH=um SUBARCH=x86_64 defconfig:

Building um:defconfig ... failed
--------------
Error log:
arch/um/kernel/skas/clone.c:24:16: error: expected declaration specifiers or '...' before string constant
   24 | void __section(".__syscall_stub")
      |                ^~~~~~~~~~~~~~~~~
make[3]: *** [arch/um/kernel/skas/clone.o] Error 1
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [arch/um/kernel/skas] Error 2
make[2]: *** Waiting for unfinished jobs....
arch/um/os-Linux/signal.c: In function 'sig_handler_common':
arch/um/os-Linux/signal.c:51:1: warning: the frame size of 2960 bytes is larger than 1024 bytes [-Wframe-larger-than=]
   51 | }
      | ^
arch/um/os-Linux/signal.c: In function 'timer_real_alarm_handler':
arch/um/os-Linux/signal.c:95:1: warning: the frame size of 2960 bytes is larger than 1024 bytes [-Wframe-larger-than=]
   95 | }
      | ^
make[1]: *** [arch/um/kernel] Error 2
make[1]: *** Waiting for unfinished jobs....
arch/x86/um/stub_segv.c:11:16: error: expected declaration specifiers or '...' before string constant
   11 | void __section(".__syscall_stub")
      |                ^~~~~~~~~~~~~~~~~
make[2]: *** [arch/x86/um/stub_segv.o] Error 1
make[1]: *** [arch/x86/um] Error 2
make: *** [__sub-make] Error 2

As with s390, reverting this patch fixes the problem.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026194127.GA106214%40roeck-us.net.

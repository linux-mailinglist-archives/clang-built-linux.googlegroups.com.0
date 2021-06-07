Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBTOG7GCQMGQEWHPEKKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A29F39E664
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 20:19:58 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id u23-20020a1979170000b02901d2e8dd801dsf6532629lfc.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 11:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623089998; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVAssG0pvJykRI/ZPPMdd74haZJ4Km2Z9NbE3T1yXWNlT5j90i7WqScLb1/Z8ZmtUE
         Eo9Ewj1Y0mLdVwmIbSvfx6V90Q0CGry96yl0mG5skooPVe8Mmrl4xE9t/myvEB6wPAhI
         jmxKNVpLZXnKInE77b8TV6E/JHRmUB6Iud75ro8/yvllrQV9jcBm3eWvn2NhCVFwJYzs
         ExOf8b9CR5M87wOl0rr3ooRBh8N3y/ndnaEDSeLDtmDiKdPDGlvWMesSU/cG+aEtFNq2
         ALAKqQlu7gIrBWfFMSkTCToXdUDzBj2K/GuXsz5gHob1icNsbvIT8jPShLn4xSiTieTl
         PVMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=eIVZfNfeXeKPe8nQ0ds8Hq2pbArnorVhfEB+8xASb1A=;
        b=yYR+BFFdLptPbwxV/iepDsAgaZg9qGlwIyYR+MPjO4mVS0IuRN3SE/ww8COX6IIQUA
         h0iFzKcovObIlwNx68rIqnl3UnhOQDoIUVhCWUIzSKhUzTKXBd2f3EHtTcqBP/XSyNHT
         7mDimV2C6a10gqdgvA6ICq68YkSTbqY1JMJcAzVaUuBSpGRK8BrtHurOd4SVXhdBvDA4
         +aZwmrKqh8tixOAvLmiXpbCH98/mmoX4pxGsT3KwabsQB40CcxhIIWvbG9l9JI5Av0m0
         J3UuUXNSqyftL5zhIY1nJs4oSdyUqxIx/TzlJ9lw6jRx1FaFbBPeRedRmCtjfvnSZTl9
         QsFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=kiF+wabN;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIVZfNfeXeKPe8nQ0ds8Hq2pbArnorVhfEB+8xASb1A=;
        b=QPrv8Th+OXbwI7DL7c/LK6cNwRYR7DQLjjG5Wi+C4owEzkHpc2LVHRAzFEj0SJLozn
         4cisXV5FeEdjf2pKIy63x9cKcrxu3HqEabM2jn0C4B8Fj2AKdDxIvD2a3LyFiTVV2Xus
         tMsyHakKQgqM9nnhhu6qcKD1zvAr1mXKj0KW6MOlgqpsu4poMTFfmPnHFd0ROY6lF4tG
         1HJF/IJ7ByHUDlXsIEe+1CJTCi7cKVRpgXVmxHc3QB/s63htH8+im54PoxFqDbnkluYY
         Urw5O18/5ZWdshOvtjSbJl0/HRho1wpQ7Ut8knLqxuZWwXiMHo6cT0y48rIUdT+Bw2rH
         ZYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIVZfNfeXeKPe8nQ0ds8Hq2pbArnorVhfEB+8xASb1A=;
        b=jIvGQNeMxFjcSxuO66JZ/G+OVmj8OP0OT4NU+Lru+jDySa1Vp1RI1Ctff5bTx4s7JE
         tTyJr+ajveZVo6FTG8TOPWBkfWdA3k44RrzDjIQ4GIvshKFRMZQlWT3yN8DBYvxkznoZ
         jbgDLOFrIF6gCoH16XQilCQ5i005i9a3ChNFJpkyDt8mLbkEdUfsSMVn1zFDa8Cvmg6w
         sMJZ9KtUYEtqGIg7QW/SrJjbINZPxyi5zLxj++RDGdGSi5oCjTzk90U8W43byk3WqFw9
         cJF/vJdTElRG4eyBBCCojt1CioNm4uaiZY2eY+nqK2kskd4s1wT3RO+2wlj12zPZQmQj
         hEmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/NNNg3V75bqJrDSgkFccsnCg3o4+Rwpby4w1/OraCTH2On5p8
	18pl0iiJ2G9rAK5IQhYtrPk=
X-Google-Smtp-Source: ABdhPJxtx7iALsRKz1tgawGsLF8SLEtC/4nJ3AmBpaythLYp1iq9970FEO1gmsXZlunVARmerWEodg==
X-Received: by 2002:a2e:390a:: with SMTP id g10mr15854511lja.80.1623089997964;
        Mon, 07 Jun 2021 11:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls5168652lfa.0.gmail; Mon,
 07 Jun 2021 11:19:55 -0700 (PDT)
X-Received: by 2002:a05:6512:b26:: with SMTP id w38mr13179872lfu.227.1623089995848;
        Mon, 07 Jun 2021 11:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623089995; cv=none;
        d=google.com; s=arc-20160816;
        b=rb7wjuwfoH8ljyLa/02XJFe2R4VwjA0XxS4+WMLe4CSdh8SunUpog420Ldgezi3hjZ
         gyqm49uWkvFK7skpkP9W/6hac1YAH7nHwE39skAuZ5JILij3oPtRFEg4zOdyDZFBxYJe
         FOM1r9ARsGbuq93iZ/e04dvQjf4Wk+KJwG1OLR9IVTnH2xJmk+gXvxxKa6N5yphAmEh1
         xtawaHoPgKTKaJVHn/Y0mNKyfCPw7bQzIV/EkdCgSv34A0FzcKO2p6JyjofIqlzMFz7C
         4fW+wAwv/MbaQVrF8oFWg2WrPABPCqmBwRITKhhh4VVOPzji7dPuVIbLP867KXg6VmDf
         pYYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ZUrYE4B+hFTWCtUpmjnHWEzCGxeHF3UiBJxJAFGwgfo=;
        b=X2Iyr7d6FNAz5hvQkTEM/pYqAwcQjb+nOKDbyRZJ6EYBKeGNKsNGWpMNyVA5lZaIQ/
         pZfTowHL1ulV/cGZhCUtFU4678Rr+CrkCU7+O+O/PvXLK/0LAy74Sx5OEE0WsSbEqIQK
         GRVKoFKU9I3/16AKVITXM5HBieQtBvO06b3lgttLKV3/6jdgjCUUjvqEfnpNl2q9x2ZK
         VgFQnFllUvY6ZgzRKcEUww2z8EqA+kkJVWxvjsAC0kSlPChe2I9WVOLuY7f6IaaGHjt0
         oUPEa0xv4nuyyrZJkW3I0ww4esK3vk21V7ZlFUiJpmOMBST+4HCxipaYSNC/J/p7rtbt
         CNRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=kiF+wabN;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id d7si624099lfn.7.2021.06.07.11.19.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 11:19:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqJqg-004UOz-NN; Mon, 07 Jun 2021 18:19:49 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 9D1453001E3;
	Mon,  7 Jun 2021 20:19:47 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 8370A2DC8FF13; Mon,  7 Jun 2021 20:19:47 +0200 (CEST)
Date: Mon, 7 Jun 2021 20:19:47 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL5jQ6wMo9WeQDYJ@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=kiF+wabN;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:

> You may use https://github.com/llvm/llvm-project/blob/main/llvm/tools/llv=
m-objcopy/ELF/Object.cpp#L843
> as a reference.

BTW, Error::success(), is that a successfull error, or an erroneous
success? :-))

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL5jQ6wMo9WeQDYJ%40hirez.programming.kicks-ass.net.

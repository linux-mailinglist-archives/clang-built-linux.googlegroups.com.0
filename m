Return-Path: <clang-built-linux+bncBCU73AEHRQBBBYHTTL7AKGQEMBAOWMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA722CAF16
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:47:13 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id j145sf1806528pfd.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:47:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606859232; cv=pass;
        d=google.com; s=arc-20160816;
        b=ssBnrdESA2aqEULt/KN79fTDS9x1sClHsu1sk/qUyTZ1ce4MkpkEhL/EeNdzOCc9TF
         gU9Y4tkQHKZFVVyVD0OqJ/sF2cbSML+XUo2XfOTYmC5S96yN/6ymnK3Td5uqjOBkjk1C
         x+qE1sHOGsXh84D1iBOwjDjPZx8+wb4tb3dzZRyxrZqOTX9qs2iBPNG9YCupwgcC7Q52
         qkVctoLxbgDyPqYoP8AFtvFs6g1mk4oKmRjHrO2sqPY/ZNNVG/6+nJoCQvBPXqv4XSFk
         zoLBnme4lNssGop9G7xXj2yr9thiWOOyuPGj+eqGxFO2phFCFdM0IfiX/KvEz+/Ag3jh
         SOZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cUcsgGorrEmMGoGGo5139jsjk5Z6W5M+PGhbA/F7tvM=;
        b=XjwCKnS9jHFUI0ixSmIiMBZ/CiN5oc4ftwuuayQ6at9LMQYiqke9mrSt9FBaMluP0F
         LrJTZPPs3CCld15rg7tlE+R9U/55qQgLKY0SkdYNVXnHHs89/a+yn7b1PY9SDi2HAGYV
         kLvcVUovmZSl2RFVHHjseAIpuLR4lD/eebJ1wg8jga2hPD8nWtx5uwDjfNV+Xy/UvFEf
         e/2g0hnW560xhfcmuCd2nwgeN7VfMRlFRCbs2AMEseUIQ565Osun74wLto2N+Q4l1fKG
         T361IvDDW5G/CKbG7kSSvna9aQnIM0cAOo4rjHkpTC76vz1qjA2sLlrP/ovidbpY3kA/
         /nbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qnpz=ff=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=qnPZ=FF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUcsgGorrEmMGoGGo5139jsjk5Z6W5M+PGhbA/F7tvM=;
        b=FokETAZXn/onvxZnxStsueP9XI4VSz+ZH/BBa3eT2i7lJeQujqpgJEar65uKt9+j8I
         hPbiKCZcM9hEsvpF0wlKeatHByJLPO5KPDhtbpXfNS4max20NpQUPo46BLHsXOsYsXb1
         v8FqIGVVoM2uF+SAlktAZ02Pc36ivxJXHs/Lyxacasowshl9OTl5mryLjyQdjMRBM+6I
         Y0/5+XvFM2qthZj6ht7BH1B70SikPjG5SOMUSqVh7qYN2qfiBQAYjemkhPHScIpYLKOP
         rMBtX5FowDOqYLnyNej/l4FTFLepWwAsCXtpeCjP1kaLsL8O0QHoWoEshAkLoplgJSwi
         QXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUcsgGorrEmMGoGGo5139jsjk5Z6W5M+PGhbA/F7tvM=;
        b=dGpunTW09wU3t0VAFNmto6iBOMx2lBTsrE3ngymLEExcydCEC3qVhu2vctakkyL1yH
         +6zNmkfdQ8O2fsRqymDAHz6tizlMFRqpF+q8k6Ra9uq1u4i/V63aUXBpLOKUdcYYfAVr
         q8msPSREyjHMgymC4O36EV24v3eu+3uuacShkBpvn28rXlLB9C7taDXBEEoGUdqT00ov
         RgccZUVnD+ANtCVB1G3hU0RjlxNwHKH87RLpzpjC5nwQGM3uq4C75qvd50X6DfDZ5oqV
         b7xMFBfko1qXJggOUV+r8hMxcokvE7vrEue6mpHXJf0db1+Ubc9S8yEMB0O2Wvc8gYFt
         7Ddw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RoO0netCGI/ZtrQyz9FGD0jMiSHK5cCdO2tlUPkP1UtSuE7ps
	pjB8/vuF09hlxZ0SzfQLWws=
X-Google-Smtp-Source: ABdhPJwyf2ORFGzphqhacmOX0CGw10jejGHF3W2MFHPeAO0cepgNUVE2eK6XzDhmAATePOtVAsdIJQ==
X-Received: by 2002:a62:14b:0:b029:18a:df47:4133 with SMTP id 72-20020a62014b0000b029018adf474133mr4356498pfb.72.1606859232526;
        Tue, 01 Dec 2020 13:47:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a503:: with SMTP id a3ls74169pjq.2.gmail; Tue, 01
 Dec 2020 13:47:11 -0800 (PST)
X-Received: by 2002:a17:90b:34f:: with SMTP id fh15mr4934819pjb.56.1606859231892;
        Tue, 01 Dec 2020 13:47:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606859231; cv=none;
        d=google.com; s=arc-20160816;
        b=zWtCcoDfC6n6ACqjXLZ+2OWQiS/hyOW1I2DPPm5afxf5Tfez1K09TOxV5YB0hqSjed
         x3yLlCIU7wubtKjrcf/qllx2HjXCj9CSU5MkZxjo9IVIk5qD2pygoxV8NPLbQfTMv/1Z
         xKhuPA3s7nA6ZeldNbrXhvw6bkdFXv5i38LSKapCF55zAmJJfy4uwCRmWlncRBFey/0+
         uPE9Gaz5ex1y7WOFj2qDvvAKyqb3tp15jk1ARnQ60YTUGS0UhkOuhbIp7U/zqtGMQO8K
         jSmtGZeufg84F5nPwBzim6ZCkATvmhRjieDDBW9ALCo6ejMdW8k7VV39jf+vtuF0r8US
         FlHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=AskkIvn5vOEvRKeY0mKpi7xR75Mh8c104VtYLLfdq54=;
        b=0uL/78/8SysGsVQCa1KJ1Sljv3pI60LO8Jb0TeA1U2vBJJJtpr62hnhVyKFGR+SfPQ
         Tv1YDw5Gf4zF7F6+8cPrTjjRrLyoasA6NlJOrt52/ye2/Y5CGg1R81TqoyBIHXY8zjP6
         ENXPo+XAcRpq/3TkuqNk0398Nvf2d7SePL9cCi+RqSIfJSYfhcejdxD2Hff+mQpQT3y7
         WvNoyarddPr1qJXAOY5mSWtM+z3RnLdmyTKUxOq6+0E0BiPCqtFwB1rXqDmUs+wRDBpo
         MaSnaa9WbmhFDzXalf4puRPk0YSAHqB8xoUcsu2+BnMGxsRfMo8K8trhTYjACrdLcSSt
         QIJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=qnpz=ff=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=qnPZ=FF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u133si105283pfc.0.2020.12.01.13.47.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:47:11 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=qnpz=ff=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3528208C3;
	Tue,  1 Dec 2020 21:47:09 +0000 (UTC)
Date: Tue, 1 Dec 2020 16:47:08 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra
 <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH v8 01/16] tracing: move function tracer options to
 Kconfig
Message-ID: <20201201164708.19066850@gandalf.local.home>
In-Reply-To: <20201201213707.541432-2-samitolvanen@google.com>
References: <20201201213707.541432-1-samitolvanen@google.com>
	<20201201213707.541432-2-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=qnpz=ff=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=qnPZ=FF=goodmis.org=rostedt@kernel.org"
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

On Tue,  1 Dec 2020 13:36:52 -0800
Sami Tolvanen <samitolvanen@google.com> wrote:

> Move function tracer options to Kconfig to make it easier to add
> new methods for generating __mcount_loc, and to make the options
> available also when building kernel modules.
> 
> Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> therefore, work even if the .config was generated in a different
> environment.

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---


-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201164708.19066850%40gandalf.local.home.

Return-Path: <clang-built-linux+bncBCT4XGV33UIBBLEZRX6QKGQEDERVO4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 800CA2A7400
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:51:57 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id v2sf130124pgv.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:51:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604537516; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxRzCSdnWk0pKWTWqa8HigINtTOOTxIO3V49htcmtZ3p2i2D4khsOp1Dk2kPfvCsdK
         LqaIpr0IH2o036n3+zMXYBQ8Yx0r3sC2vHDpT2X/s7TZ8FZh4ta6XiurKGILokLxJT3x
         +hR93ERu4Tf3wf0Ud8IRUlThD88VUGyqbLH7pzyo2QSjIcnQ1M+FSSJFiYdfsiN5PUKF
         PDXaMnz3/19w0AjCAUxSQd2e9LBUsBtVP9W4MjzySnyOu3n5g0oCFXhiNeyZSFxyF4q1
         L5lnatQ9MN2YgVkOPFPAwY3qLEZCFY+nFJe9BdNhloRr64QF/Jyxz0QN55CPU04Dqj+g
         Gnog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=R8gxoKNTGCK4UIhl+oCQv3S5uJNYxJA50O7V33NT8Bk=;
        b=wPe5H8k0sFJvUPUPPhyju7ysnrOD3GOoJoTmSFIjhJ0q8eizgkJFG0ChmC0hzvXQvr
         eSO9MIG5rrKio0GIqD7mMzhLWjr1AD+GkxGqW45guXyUkOScbGx16GuZXE0SOZX1uND4
         kaUdxh2VKl9KVdIqETuquKLSTa9xgw58+y58sx87xD/rNR8g0kkc1ZIAy3ESQkZGPugK
         3DhIReevccg0fb85TuRE5U+7+GDpr6YMS8swmmdlPsAwYTtW9q5Q+/Xuia+BWQBf+sjg
         ozbG3DxX9C/lBq73gQ03l/Ep5oPBHmlYNTKovmftEtTJWhg4qTNeQUOPhilkRSkGofhG
         0T6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PiTqPeSL;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8gxoKNTGCK4UIhl+oCQv3S5uJNYxJA50O7V33NT8Bk=;
        b=S/U5w3e4lMP6j2QxSs1gF8QaUpF34Iw8hnKgKtnrku8+OFwOMlrwhd2eVGzPV0umDN
         VG/oUWVPzv+vP6Q5i0h30aY/NseHUNF0/5AQEXXrFfYDs8iiE3GenM9agUUZHhhMCPog
         /8MoxXYA73/Vekc6lCV9Z0y//9M+pn3J2jI3nVt33PHzWTJkrFXZX6TziW+Kr7ZDPo0E
         8gAcoz1jZxIamKpByKPVXieS+MJrkfkmD+h2nbLci+/rFJ3ENSH3p0O96cNCu+vJfJyB
         TotE9XffR+ktSE9atPfiEv11tut8rOscDr5xri1cT0WMjMO4gASmJv7fISP37PJFMKSv
         3eMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8gxoKNTGCK4UIhl+oCQv3S5uJNYxJA50O7V33NT8Bk=;
        b=qesBePt1in2vZv4cAdjl6NnFXSwyIxyf6rXYaRMI1+ZUfKgqk6OOdy9dZcV9aVRf46
         GmA3BD5a26DjmU5Nv8OhRy/0gXfO5Mrw9gEddhZ84dYEySIQymgYxEEz+Cs2/8ZzPCQ8
         IMMom96KNZ5iCqyFurvTE7urHY1k+80H0dkyavhcUyGSJKn/dHRgsantxhxV8gF6an8e
         LDHXbeONL5qwRQCeJ9BcLmTDIXPkVagRSO7XodgVPGlsGMVUHYvIlHscMRBxzXxvno5x
         olu4/CxNZd3dMWsa/8rZUNAgyhBpfcOHbkQsYHo8mY9rBTB2Hvx1Pr5YuocdO3s3WPjk
         XAvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Yz1ZaGj7km08LcICcN9gVYiQv1gZlzh1XEFZ+wUwvPeHu8KOL
	iZdWoK6X7eRXjHaDTLfla/E=
X-Google-Smtp-Source: ABdhPJz5KHHEUAKDt1HtRSfnOVIzBbVO0+dnZ2lAK5hR9HuIogsSQfqc5gnGRfh2igmnpJJQTN4QAQ==
X-Received: by 2002:a63:7e08:: with SMTP id z8mr32129pgc.152.1604537516236;
        Wed, 04 Nov 2020 16:51:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5a46:: with SMTP id z6ls602979pgs.7.gmail; Wed, 04 Nov
 2020 16:51:55 -0800 (PST)
X-Received: by 2002:aa7:8055:0:b029:15f:cbe9:1aad with SMTP id y21-20020aa780550000b029015fcbe91aadmr434064pfm.71.1604537515569;
        Wed, 04 Nov 2020 16:51:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604537515; cv=none;
        d=google.com; s=arc-20160816;
        b=y83lpIfJoKaaZS5u5BueadW8p1xOynIRSTQ4eOc5QFT+lIV16pJMeoeSmzo6e63XXs
         hdqEaiIY98An2MqSgpsm6HthhAI+XUbZsv5tdAsLpwr5jc33MEMTAXw16jVy/FUGZ+yM
         q0PvtIqs8OnKiifAOIxSJgNcLfblyTZsJ1mLZ+xqeOAmhVWMCduSmXu7M1Xg8jGl8yb/
         MlLPdgDlNpUDhuxd7BfgknCgjVpA1nVDEcRPPeEiLLQ+xaycw1RtnxaFOojtE6+kikLw
         6rQ2yc5kkigIDjMHpuM9U6prKP64NTY9tkdntJQbyDcsv1FLn/6fcwPuCMyrzyjQPid4
         /rEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1vBc40WnULtxsRzxXjz+MGtnd6AnH6pwkSo6JOJzFec=;
        b=d9Bb2WUzUuHR3fBeIX6CvNSBwDFtQWkp6URl/1ZvrcuuGuAzW4cdoPkANzF5POk7GB
         u0a1kE78HLljJkYl1KRxSEnNGgHDDG0P8hr3c8S5DOdlTaYmquTdUXdv3HPIH9wU8crx
         83p1HxDCyJ1y3JrF4R8I68e9OhyaVVGN79m9SI9CI2DdK5sOEE07xtNpkp9134c52jWx
         7l3kEEF3QZJnC1KiKoH2ytLZN7CHsHln92+LyUcy633glo68fBLI8BEcXvk7xiuBX+Ps
         /09uHUYG0FHh7tvek2asoQQCAF1U1XJxz+pF4sSOJ/CEon8pWP/t02cTXqKLi5opPSkm
         tuBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PiTqPeSL;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si6823pjf.3.2020.11.04.16.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:51:55 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from X1 (unknown [208.106.6.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 28A9C20BED;
	Thu,  5 Nov 2020 00:51:54 +0000 (UTC)
Date: Wed, 4 Nov 2020 16:51:53 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org, Chen Yu <yu.chen.surf@gmail.com>, Jarkko
 Sakkinen <jarkko@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko
 <andrii@kernel.org>, John Fastabend <john.fastabend@gmail.com>, KP Singh
 <kpsingh@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook
 <keescook@chromium.org>, Marco Elver <elver@google.com>, Arvind Sankar
 <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, Sami
 Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
Message-Id: <20201104165153.c10f4f2f91c0d4748df1c3bf@linux-foundation.org>
In-Reply-To: <20201104191052.390657-1-ndesaulniers@google.com>
References: <20201104191052.390657-1-ndesaulniers@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PiTqPeSL;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed,  4 Nov 2020 11:10:51 -0800 Nick Desaulniers <ndesaulniers@google.com> wrote:

> bpftrace parses the kernel headers and uses Clang under the hood. Remove
> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
> that this tool can continue to parse kernel headers, even with older
> clang sources.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")

1f7a44f63e6c is only in 5.10-rcX, so I shall remove the cc:stable.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104165153.c10f4f2f91c0d4748df1c3bf%40linux-foundation.org.

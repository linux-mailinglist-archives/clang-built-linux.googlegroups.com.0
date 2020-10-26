Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBFFX3P6AKGQEN6BKR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCD3298F1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 15:22:14 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id t12sf5055808pgv.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 07:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603722133; cv=pass;
        d=google.com; s=arc-20160816;
        b=XqGfMQEUBhgdLZESQF0yl5t56HGCGi2Uomj0ePehqHPMY3pl9cz22TrdHa3qBhLUS1
         w69mZwHrSBh6qYeSj+tXtMp2lk4Cu+YmsBovt80whq1Qn5j75VRBWiUHu1XLy1L0/kiz
         O9tz5U/SLLB8y+vhmQaWr6aiaufvCsGP0mRZMf6BBByIl8I2zJ0xYTpw1/wgcEv2jy6F
         ArYqjMIHQfNY6mDvm5780ejhoMT57Bntd1owuxRfsW1705JPlz2rQvf0eXRUl44bZFJG
         +yxJcITYDqRC2WiXehYdpWrFY0wjd1NDyPBibvt7EmCFEv+ON0f3siw1D+n7qtSmPLCd
         HhzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LYPHg5z7s+SJRKygaziFP0gy/jn8dSqO8Xfha+FBYVw=;
        b=yMlSG0ElGEsKX+t8HnqBSWaRqjqhAiXQHm4OveVDBxjOoQnrnK8ad7O9KDfhrWP52Q
         57RUbiC0eso0xa4myMVK2336sVsqbnZBq8MJVHdKp2AS6NVtXY/QzniQBbF0ZBKfQBvM
         AUmu2DghsaOg+BYI1XGI42j8FeRN1jdugybhHdUvhCnpN2IF/YBanW9Vs/xswPMDCJe8
         qfy1d9eR8wgjr1sgVf7DmemlrBW3TcaBsVJ5NQDqXUlPUBZviQJ1446bi+LIa5fS2D3L
         EE378nPPclmo82lpHJMHv1PE22InIsQXjB2QnzvA0dcLn4eyhJYaC19dWLSNeNMjkwgs
         gk1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rkehNneu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LYPHg5z7s+SJRKygaziFP0gy/jn8dSqO8Xfha+FBYVw=;
        b=jnee2SkOfzDhWTIvcYgKjC/mhgtEuYN9PcyO/Q8aFbEP46/9YbAgkySOHsOYHcjbFd
         IxkJEIHwjTtsjBnFl7sHEc2uFnZiIBJK5gnrTAOw1JJ3jh3HwhbM66LtHzRUoi4qlK68
         SU+WAkpltri+/gB/emk97qw/RSZUMMHk6LxYCu1cw79Hj9V7cfqFiyh3uWqgiNZvoSgL
         meX1Lqd8l+Qe8kghnVTh5y9D2UbwhB3OrzKeLj5z9skXVvKXQm2Fbhgr3mbz7/iF+TX/
         vq+x8h6OWwGuq2oeH9ltID+XwQiduIp0ZFzF0Fy6LnQVtje9QNIcbZcGMfLa/CCJWkSo
         28UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LYPHg5z7s+SJRKygaziFP0gy/jn8dSqO8Xfha+FBYVw=;
        b=LKbrbssEXyhzWFvF2JpXjTkYzJ8HqYpreSvJgqB4ASrwkrnMnngWNTKjUEMMdOfAnR
         JAI4aNWPiJ5Ooi8R/+v8oa2YipN6L4LLX0j6zOvJyLlUtDAXL+vEPcmUq4kIngEAOFAu
         A0Av18vWD1saXTcutnO0i4iYU/Ez1n/63ny/60uuwZqVbIPf/9nI/xHGrU0CC+EvlCHh
         LJg7g6vK2W8QZT9v/n1LXSHHVNaD/4JqH1ITKgL/bQm1wwJ9ADYSJg8bSHv2ge2FGh17
         wy02N7U5qmDRfKI+7fUOf9x/N8hp3wlrW4Gzo72JNv71KZdCSBQwYey9vb3HL0+M79Gx
         xyWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Diok5YPai2tFCrRWM08ecNQUaz12+5LJ8eT9dJWL67yDQQ1IR
	lza/jpjeAsJ65oYONT6RbvU=
X-Google-Smtp-Source: ABdhPJx/7cwsa0BclvgVytbT6K6nQsMZbDZCyJbKBn/1hsy+Hb9LXObAw45LtyoVu+qUZccQLyUOYA==
X-Received: by 2002:a62:585:0:b029:163:b618:92c1 with SMTP id 127-20020a6205850000b0290163b61892c1mr5736128pff.41.1603722133101;
        Mon, 26 Oct 2020 07:22:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6815:: with SMTP id l21ls921621pgt.11.gmail; Mon, 26 Oct
 2020 07:22:12 -0700 (PDT)
X-Received: by 2002:a63:4383:: with SMTP id q125mr16808981pga.30.1603722132453;
        Mon, 26 Oct 2020 07:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603722132; cv=none;
        d=google.com; s=arc-20160816;
        b=f+soev/AF5bZ9C8myTzD0gwqt4P1AMOoqHStaS/0sTPExYlOKWLwhiJflbO4e6Agio
         8IkYpG+uIENB2TIXR8DOeRYXWSe6N16/DmMCO82U7e7nVDb99pT5JOjpnM7XN2CbTt1j
         5SCVJPxnioVDVatKRzephoXp6OjohW256BglrQ3t9kiM3cGfoVqmaLBasPkwofzaFETj
         1LdkgMdgRB+/Q8YhlkRFgeP8m0S6Yo79RdOwyUFUDTcZLOZtO4KNRrTlMkRYOkueNZtA
         bwZMy4d3U2r/eadtQFHCqO6v2kQFkyW6cAaT4flQhNBG8KeidlKDX1drJuZ8+JBl3T8/
         1evA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OYMdzXMOsJqg4LVkTAyvK70p4hYTq8GUBUhzhBNSEnA=;
        b=npIr32Trn0i9n2cmd14lkHxqghBLgb74m/cQyk5Q5U8/bwz32AFEe5iBe79L6W7htg
         3cOm53GhPC29m5sac+MM2zPD35wnGA7iKapXXmJPJf2NuB9TzykMQKTUNStU017XVwym
         v3uQtvy8ReKA9M5mnkEGVwm9QkboAyB8NJ0lzdet2UuZHcqKcvw28/QjP+qITY9B/bbI
         90Cef7hi9FJWuzMA5zBjt/jh7t/7eTKaYp/lycraAveoLz0reTXBcm0AwYQs/l8Vzu1g
         aGxKB3rZ2odCh959R2iO6v1fde3WPuaGCZ3XyIfWdYWCC9sJbpN7bRjKg6POLRzHofni
         RaKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rkehNneu;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y123si530162pfg.5.2020.10.26.07.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 07:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E21E2463C;
	Mon, 26 Oct 2020 14:22:10 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: vdso32: Allow ld.lld to properly link the VDSO
Date: Mon, 26 Oct 2020 14:22:06 +0000
Message-Id: <160371826139.658538.6694250403210867062.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201020011406.1818918-1-natechancellor@gmail.com>
References: <20201013033947.2257501-1-natechancellor@gmail.com> <20201020011406.1818918-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rkehNneu;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 19 Oct 2020 18:14:07 -0700, Nathan Chancellor wrote:
> As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
> using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
> Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
> 8384/1: VDSO: force use of BFD linker").
> 
> Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
> link VDSO") changed that Makefile to use $(LD) directly instead of
> through $(CC), which matches how the rest of the kernel operates. Since
> then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
> which has shown no problems so far.
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: vdso32: Allow ld.lld to properly link the VDSO
      https://git.kernel.org/arm64/c/0fa97e9403c7

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160371826139.658538.6694250403210867062.b4-ty%40kernel.org.

Return-Path: <clang-built-linux+bncBC2ORX645YPRBDNQTGBQMGQEVLR5DKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC2A352398
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:30 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id v18sf4064574qtx.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319949; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWT9YgNC0C80q3pTl7OzA0EHKx1Mm03Qev7d0bXuNoJNeJg58UiEGUwUo3+M21sfOo
         zi7FVNC0vFKWL8rmFe32jYpHaFE3hbyh6d1i4vHd3aI0o1hgQ+oTcnYjMGazuk9Bwhrf
         2rW8gXck3xCvJmF9s8axtxS8GQY4i//XMb2nh5fGILcDqwDOVk0SoE293HM8cXIj+7K/
         txvARQ+d8NHdijv9icqHrbmdnAM8+cfOhWSWMHX6th8hIDYB9nU8VwlmFYXO3Prg88s4
         p+z+k0naHJeIuYxaTZ+9i2wZRYJu+f214SicOBnvf1wwnMzyGCkSlXD52a9SLuYdnQE2
         Lwxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nMVwI3y/BwUEmkgWZoXWubv2V3S2Krddqqo0IR43qAQ=;
        b=GMvNXYGF1aERk+GOly6b6rMxOP2Nt3gEwLADbsB3mrfUotCzvXcoONGN4or3ZfR2/5
         1N+M3y4Bjdd1hhK6ntGlTnNlzcoBgLvWqvesxUNtCDWJIwUHmAYOrHzmG0Zt7xZS9TCM
         pqfmhNO8ITvjJthWZYNs2f/eO1CHBmuVT937Y+eg4zprcBt4qDwDoPCaSoKRAYc2pq1n
         Fa4mDxJS5w7LNhB+1KWuylgu9NDdXtHHFqQnggj6JvPcy+tZBwhaAnYAYEKk5XMnoQ3t
         vl4wSAOSW40EVAt1/MlYDo9bth6oXFX5r+FXbS/6FZg6lZZWWW6k5X/Sf2D2fSfTvU1K
         AMzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tM0gdLvY;
       spf=pass (google.com: domain of 3dfhmyawkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DFhmYAwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMVwI3y/BwUEmkgWZoXWubv2V3S2Krddqqo0IR43qAQ=;
        b=NDIR05//pNEISHdMIkiRah8mmf+Va3EdgcBVtfeNoultlP7zMsMpsgEmRyEjxhWofg
         zQ2J9tCgl2yhiNENFM1XBG/d0H501LBo1Jo7eNR0mLoyb2ys6AGg34499bOF4o1IPpgu
         no3q/yx04o7SdClTMUTUj4mvCyvGzoncArZodLLMtLD+jAkXGK1F47toGsZmTBOTyp9A
         7Xdp4GgUun+cXM/gP4W3ig/KBxjG+hlHQi6NK0jI/g/LDSnfj+k61YOD2AaixefdLVVg
         G0kCwqmkzO/91H/UcrBB+Ncrs+lH1zX93Sh5gViEWfVi2g43m6DtnoenGBA4Vjw+N62y
         bM0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMVwI3y/BwUEmkgWZoXWubv2V3S2Krddqqo0IR43qAQ=;
        b=PngKV6hywACKnraJ90uYBMZK17Aw1UBWGZZzv8zgL5kf0niLsNO3xIpHRqJ3lnpThW
         /JN+nrwanaSArQkaiVewdQ4S7wtI7IuRNixF7eJNPrej4kZbDxr3t+PkJPIWApvwPmGM
         r3nc9hxwcF+JxvpRrmKw8mg/3QHUSdCN9Ym2OJG7SNdLYfUZw+ItMrGRWQt7eFqgqswJ
         he+hvau3HR4NxnSYFcpLNCkj2gASnP4uRgRZPnME6kyepSHJwdLvMPrLipncBQK9Diua
         GMfDrJ/AmBnBD7hu60j1iFbz9iQcrAtjJ9enVMI+LtsLIBiNHkXbA9fW6bf/I0A5rfim
         DsyQ==
X-Gm-Message-State: AOAM531HWKM7i0lq68pfmn5opH/pDIAdd16ZU1Cx4eh1uqHpjAjkkRpd
	Qlb/sO/osOCnSUpmkY63cSQ=
X-Google-Smtp-Source: ABdhPJz6+l0FArd4wuOscOIwJ4bcrp8xq1vQm6kC8HsoAw0AEyF0LuRaSzCG+OIzXEO2fSC9420zBw==
X-Received: by 2002:ae9:c011:: with SMTP id u17mr11139190qkk.2.1617319949319;
        Thu, 01 Apr 2021 16:32:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f601:: with SMTP id r1ls1982186qvm.2.gmail; Thu, 01 Apr
 2021 16:32:28 -0700 (PDT)
X-Received: by 2002:a0c:c488:: with SMTP id u8mr10101698qvi.47.1617319948898;
        Thu, 01 Apr 2021 16:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319948; cv=none;
        d=google.com; s=arc-20160816;
        b=XuEpSd90o8FE8/7eHRyj8KvGbFL+SURzJ0brbXsfsjJfR7wMxflqWZV9iW+32P7lQW
         WSKfR3sh19Gv89Me8u4hseCaV6t78VtNzKVb36ydaGUhvCzoQQmCM2Dswop4CGoVIu49
         hvTcvelT3vFdqWlU7JZejmwlvfn5FrMctMGFPFtUCTgQsI5F6HGM6AOUDunMXUFqqMmv
         1UVhZzgocyH0DvgfEWQq+Tj48JNjWEWKso0GUMjMfMUb5clK3lXBRiXmdKalrjUJ7HUU
         JCeAtgoV9aho1PHRFOdOd3r7Sfhe3UuJxCkvgMlC+zlgVa7S4ZKxCt5NHywukbs+7/kv
         ZqeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PVR0PDKMcdICThtHzZ05IpjfNpdCKYkDS1ZQgOORGog=;
        b=fcePRi4rbWuYUrvDuCpkovgoxcaYRrW21rrVy6OvuVMXiXg0mOsB0VnDsAZhZ+qkdH
         NofXbwL1NwvcgnlZQnHTKBLgC0i5geJyyMZurjhrhvGNHqBMCNzJpHNV79F07n1yOTU+
         na4VhyU7chX8iIlaAac8UxWcPqcU6pr41OXhfmh/mgn1O14QvNqwqm9Ke/GFjgA0qlil
         Mnw9k4RktAf9W96rgaI9dDsqWHL2N721GJzo2UEhZj6JZ1keYFm43KHa3rjFx40bLYAo
         /ajqH76XFQyBra97H9E4pYCpJgpjqcrf4IvjGNbqv5McRoSb+imvD1g1ftD/aKXxcdqO
         f5Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tM0gdLvY;
       spf=pass (google.com: domain of 3dfhmyawkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DFhmYAwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id t7si387703qkp.7.2021.04.01.16.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dfhmyawkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id g62so4783999qkf.18
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:28 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d7d2:: with SMTP id
 g18mr10283542qvj.42.1617319948605; Thu, 01 Apr 2021 16:32:28 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:03 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 05/18] workqueue: use WARN_ON_FUNCTION_MISMATCH
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tM0gdLvY;       spf=pass
 (google.com: domain of 3dfhmyawkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3DFhmYAwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_CFI_CLANG, a callback function passed to
__queue_delayed_work from a module points to a jump table entry
defined in the module instead of the one used in the core kernel,
which breaks function address equality in this check:

  WARN_ON_ONCE(timer->function != delayed_work_timer_fn);

Use WARN_ON_FUNCTION_MISMATCH() instead to disable the warning
when CFI and modules are both enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/workqueue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 0d150da252e8..03fe07d2f39f 100644
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -1630,7 +1630,7 @@ static void __queue_delayed_work(int cpu, struct workqueue_struct *wq,
 	struct work_struct *work = &dwork->work;
 
 	WARN_ON_ONCE(!wq);
-	WARN_ON_ONCE(timer->function != delayed_work_timer_fn);
+	WARN_ON_FUNCTION_MISMATCH(timer->function, delayed_work_timer_fn);
 	WARN_ON_ONCE(timer_pending(timer));
 	WARN_ON_ONCE(!list_empty(&work->entry));
 
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-6-samitolvanen%40google.com.

Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F3190805
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id e5sf15476482ilg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=DoyTVHfCbQm4wF0Z38ZEHOmruvgBW0ZM88HDFv4mr8x8xBqN2p9srQn7thrAeDxiFN
         5LrMi8osEu32ixzpB4e2d4MCDR7G5wLkwZxNa9WwvrcG3W5FwxJIswUJAX4iN5GHzxrp
         8AsaTIcIcdNQ4RyoMRfw4aEkIYB12TgCYoOwMsqPA1SfNHfso6VXnqLkIBdp0Fhq56ai
         PYVqdZsELMBB5YDxno6NjYd0Pi8ZsJrqKjYUh/yKV67liatAE7Z7o85eAmXk2qGvO5B9
         SMXf97rt7elvNU3AzouPV2pYpzZeTc1pQ/tnOtNrT/k9qE1Vhxyykh1Kptyr0K7NCKJI
         d0Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=l6m2/muJQzWXIeTVVDr5uDJxcUHMtaSHtpZM6KFFn+g=;
        b=ychPDWNgmnVQQjvwsRMj/pyHtHVqEogjDNDC7jN0Ov4r5rXjvumILFZaauTJV3NdXV
         oNvZ5foAugf4rkpGlD5pdoqlfV+EHR/R6hOkNGh7t9JzKIZQXRCLyx3XaEYSsMw5k8L+
         oMbLA4rF0BgLS2VIc40wQjgV0Kw4Mg7TV/9/LdRWwbE0aqbbOZFR2O7VDJJA6XtGQDwo
         2+OHgkNJpUTG2Eu5b/oH6+nJUi/966cgHcuD7TxmVQqyGX4QB3NdYXhkZ3nMvRWcTnyd
         BBl/oxYdqQtkBmTSlcH+vVTsG8JQAr5P81kSynJsftGeleraej6iawo1hW4JgRb5YbaM
         uhCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yld4oUJz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l6m2/muJQzWXIeTVVDr5uDJxcUHMtaSHtpZM6KFFn+g=;
        b=CWtQT4CB8zKeluz+gHR3dPSPpA8pDZsruBwiffl2hmA7Tv93XRAHHyGIszxdKMdQxB
         bTup3jwy3db4oHLmeyS5XjG2IM0EcWI0TozoOGjmL7kF/qHyT5VLDuqueyJZS+vas7WU
         b3tSJvAH76rIzpVk8T8PiZDwLJckn+9Xuvf1zrUTKL1YFM5IYrhZNNtAt1UOgrBhon2a
         Xczleo+WvXU1XkQt+plzMC/kPo6reg+Ypx5dLf0iX0hkk9BBXutt4DHhTcAafwvs8CK3
         /Ce4chXuG3qEkFwg0cP/ne6+2iAd6Y45ZhdPtG4D2Xm7lo3PWoYvjTrDQP4kQT9rPDrP
         dkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l6m2/muJQzWXIeTVVDr5uDJxcUHMtaSHtpZM6KFFn+g=;
        b=md4LXVt9ex+YVScit+uBGZB7QmD9Q53f+5uAENLGwitOxQUAEZDnDTppGovd4KSdbT
         PNLzm4K3OtWb2ruTaqrGCYlHCBQrc7NUvjPFkj/WR+2TDAh+hLSduI4QVHrXOqH/Kob9
         Nkrp2HEa/zPrtHhaz/E0lPF1v/xfH5quPpTfUAcWfbDr9rU1HAIrLDEYkM/YIUTpYbab
         lrRrtNU8FdnzRerUxldfh6KX23ybGEd1Kp2NWXvq29qORBD+BHovRYXLtwIqaksZefdx
         t53QSMsz2F8LBSUvKewYcVzoBiUx5TmQf1zLYudV8qcCJlEBSKHGVQ1f95oqiz8a3icL
         XXjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2twiTqsstv8OTU1XOdSFPw0Er2aMoZlx3XZb6f4/eX5xFg7PzC
	uGtNXcIwomfNSd3+m3nAOI4=
X-Google-Smtp-Source: ADFU+vt56UsKMgG/cYenECizvGisc/+x5DTtHNCt920NGTR0B56lci/Wn1LtoVfSXXZ+VUyrPh5Mgg==
X-Received: by 2002:a92:8c45:: with SMTP id o66mr25675422ild.236.1585039777378;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:79c7:: with SMTP id u190ls4135257ilc.10.gmail; Tue, 24
 Mar 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a92:c14a:: with SMTP id b10mr607325ilh.139.1585039777090;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=PlrpF4ewoXep+wictbMBWVxTFG6jzZMOXIBwygp9uOuyqtL31gnyEiS6VSkVPfQuBy
         V9PxY34rSUEEF0qRr8KXNLjnt5zb4cwuGV05YOOr37Dob1lh/ghQ45dLtZ1j21IXxivX
         8sIjA3il+NcazigbKJbwx2f7hZoX3LQ0sHf2MVIFq6bQ1TH924xC9PpkMsKr3z2+ARFr
         y7RkGs/wjphj1jmDZOjDmoRdkHR6Zqkbe5IoxFucWoSOEe0Jy60fJjuVaZ6q+4aFA2/8
         gJCeD3x1HOGx6IeBjZlrviNRQrwEcYR+CQa0ORtDRKlVxGFZzKRZtBfbRVhZRmsgiBxi
         jPog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=/3RvcKd5y5/yj7b6stGrp33Eo6/OCU1GSvYDWjedZ6g=;
        b=0vV3/bDkrHa3YlFK72L8hkeLkBA94bUMuTp0nK05T7rDBHYdYSsnuwteYBuZZfxkMk
         QB6lKighoyVjAPRAGR9TL1ZqM6yvP37OB/R096cY0GEItoNPJqVJYbG43EDLWoCWLvV4
         WJepZlTPIC3NsMOQM4hbxrDX7UHoK9E26f3hb+OOXdsMQRnptIX4EGq4HykJHXZnseix
         SmWuuMYvIzZiBkla7MNLdlAU5xhjNav9wSQd2jFLANyXcaW3oTj2DKPa2hQYipXt6DX1
         ebXEJKRgLU+QeigZeE3dE8ioZfOIfn+IVEcSx7cREVOXZI7CzPL0CkcVLGCqGqF5CI0t
         +ftQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yld4oUJz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id m8si616353ili.2.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsg011219;
	Tue, 24 Mar 2020 17:48:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsg011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 09/16] x86: replace arch macros from compiler with CONFIG_X86_{32,64}
Date: Tue, 24 Mar 2020 17:48:14 +0900
Message-Id: <20200324084821.29944-10-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=yld4oUJz;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

If the intention is to check i386/x86_64 excluding UML, testing
CONFIG_X86_{32,64} is simpler.

The reason for checking __i386__ / __x86_64__ was perhaps because
lib/raid6/algos.c is built not only for the kernel but also for
testing the library code from userspace.

However, lib/raid6/test/Makefile passes -DCONFIG_X86_{32,64} for
this case. So, I do not see a reason to not use CONFIG option here.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---

 kernel/signal.c   | 2 +-
 lib/raid6/algos.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/signal.c b/kernel/signal.c
index 5b2396350dd1..db557e1629e5 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -1246,7 +1246,7 @@ static void print_fatal_signal(int signr)
 	struct pt_regs *regs = signal_pt_regs();
 	pr_info("potentially unexpected fatal signal %d.\n", signr);
 
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 	pr_info("code at %08lx: ", regs->ip);
 	{
 		int i;
diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
index df08664d3432..b5a02326cfb7 100644
--- a/lib/raid6/algos.c
+++ b/lib/raid6/algos.c
@@ -29,7 +29,7 @@ struct raid6_calls raid6_call;
 EXPORT_SYMBOL_GPL(raid6_call);
 
 const struct raid6_calls * const raid6_algos[] = {
-#if defined(__i386__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_32
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x2,
 	&raid6_avx512x1,
@@ -45,7 +45,7 @@ const struct raid6_calls * const raid6_algos[] = {
 	&raid6_mmxx2,
 	&raid6_mmxx1,
 #endif
-#if defined(__x86_64__) && !defined(__arch_um__)
+#ifdef CONFIG_X86_64
 #ifdef CONFIG_AS_AVX512
 	&raid6_avx512x4,
 	&raid6_avx512x2,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-10-masahiroy%40kernel.org.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIOIQD5AKGQEBBEKUXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 751F024E0DD
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:35 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id j37sf1548378pgi.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039074; cv=pass;
        d=google.com; s=arc-20160816;
        b=yC2G+PRqqJ8p8Ma7Brd98lunf6DNHet2lG/cYjXXjZ4G2Z8nHd2BVPv7fQsyihQpdY
         I28uzkl/9VdHjqMGy3nUhraqdtUVbT4eOPK/97yUEKi+pQZFQpg1cnqAqCxt7u6PCfl/
         kKTvAS+GMRVC+HzU91qY2LwznjADtbAmz7n/wz/hAOD5CaAp7LLTYJ0DuifshRngrtYS
         nY34pEBt0MkFsKYWLmG4OuZDV0H93ePenM8q7lLcVlSvmIw6TyinI/qrS/deZlGcSA1j
         tRHmt6wriZ8gMtl3qdN75Igqls8vpz4PGl+6lpzoFhigvp+2er3bfoAgtPyc9wC+dFEk
         wPjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rsm83vxtQYbOzBEUqL58FdD8PbyYsUjJBun8Jd6LZ5o=;
        b=E/INwnwqXBAxHX6ucL61QzSDZdE+zKxOdN906Ug3CRpUWiKJxqEjt5Ixvw5zLYJ2Je
         dfRXGgMwZXWXNofB0PHFSR+Vk+2sKC1LYeLmlsnqg8TLtIg0xJ+aQmK6KF9iJkdyjyXK
         AxUhUigXHaHcWS4cCGiIX1kW7fUboH3EI28PDeLxodCA80xVbEtBvF3Yn1kNfvajJdcH
         jeJjS+W22qBzydx8guC7y3pT7+7y0qxeehKMGpEmd5hNrIB7VSLXbBAwxSfwbMydwpl4
         MYmuLfaK02Ap69h8r670pF0XhdFmpUg+DcPrbEBGqFdX0JIoGmbsoRZKI3LMxmbRAzLT
         q0CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UoERYCO2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rsm83vxtQYbOzBEUqL58FdD8PbyYsUjJBun8Jd6LZ5o=;
        b=Rp9Xm0TiPSm+FWh2GOEEhaSdzaXlrcEWIh+4r+Fn9XxR07j7nUZomrnwh4+PjHXBbH
         lbWkraP1kjvceWgxws/So/xRuUy92FCwrG7D+lMNlRk3qtCK7pfyUmmjaItMQ8CKGR+M
         DZJ60G3q7MPkAOMdmlouKD01OfKl2TSN5yESxOfr1bodjdbem0IETRoWHCk1T1ckNVp4
         1Vq8X4pvyTk5vwOUWKnmvCYeCeDH/E6n4/P3meFUcdo+NCWGho28gmAZE9G2R3BzyVMq
         C1EtihKk1SeVF6ptR9VImxh325RoZFAHkSUW3fHHqOKl9h/pdeajKNZpavKZY0mTKnMj
         kPZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rsm83vxtQYbOzBEUqL58FdD8PbyYsUjJBun8Jd6LZ5o=;
        b=IkoepRUEEfBydjQAjTNbiWuqdY24f1HrIZB3DwOX+04g09HiWLBSx2cYyvrSP/DlKH
         qYgIuY1D9IzaeANlK59ry9DUoUXeYTqijE2Z4byfC9t+ZdjvhiqpIj5bKwtoTMet0Wl4
         SJuSCqNHQFwIBdKGVpkjFekfg5MQ3Q3MuBKZCsjsG687wn2WWyDJnD/aWO0AtClX8huV
         m9NHnOOtZr7uYJ2GxFyuVnvRXwLwHcjwsrjXDnWNJak9phVnoG1u6G9+tZUgSjVT3VZ/
         hXBsAoeQClgd2xX8yw5RvF3sI4al/WnriCTz3117404vER6cYiDjp6wiYRwY4BBrwlbN
         TEDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313bnfDOAYHUAczYD8im04fkZt8C0WafqDLxCJbYGMwMPZ8OSAl
	ZrpswcQ0Gd3EVYjFyFDEugk=
X-Google-Smtp-Source: ABdhPJzx3bkGGgKjlH8Latl8dOQGMCAamnAAmQScz5PJNC6mCihCxRJnSb+vFZfyRoKSta/ySHPscA==
X-Received: by 2002:a62:1d1:: with SMTP id 200mr3626702pfb.161.1598039074160;
        Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls1073750pfd.6.gmail; Fri, 21
 Aug 2020 12:44:33 -0700 (PDT)
X-Received: by 2002:aa7:9107:: with SMTP id 7mr3695847pfh.323.1598039073720;
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039073; cv=none;
        d=google.com; s=arc-20160816;
        b=VJJxwP4Iu+vhIOfDWSZoC4e0NljlbbNio43IO/7ChGMDTm0+tWSBDdRvNAYEMtKZjp
         zB+AV88oNj251CYwWS1Sxze/wZwWBgWW3KHepYEviPyeAz/QvSDDOb6RQAe9+3kqXfnJ
         RRQq7e6ZPTzOzqZH8r2W+HE2W3ZaNqqTXp8ZCfizE3ygGNAU9T+jeyaOfXsLDw52gW0K
         oGmVr8kCXqbdmNqf73sFlxELuREo/7wwVEINYLEHbuATKlO5aAoqlep+9kMd26T4+qgd
         LfXeK9HVbz2bNp8R+X7DBTz5ta3QLlsBhmA/tPj+wSZS/I88TthQly5ynzufpA+U5LAi
         R5+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LnzDApNoxwO5pBe0Rw0QWzekBEKvTuf/gsd4zpzC+NU=;
        b=dlINkPqoD976LNWQStxSOQ7i89OrxI5N6/AU1djuTOcz4bASFhSvKT4J2T7+sTZEDl
         L6hZjg7tEjqxprSQ4EnyNP6RDn7mKTYOs53ojJtW5dV5AcL5kw7nYSkHnYKff3xFfkYC
         7JyAkymUpi2g21JHevqZ8qqrax1epNZ6TSJrCYFZR/kC8Gfr+oCzmXnozLCgkCRLmU3w
         Wc/fQ9P59CSowkb6iBsLjiAx2P2yP4jb2quAiiy3eF4z/AT0/psBwu9Fq+dFbK4EINyI
         /S6muvYopfWGt6mN2wEqg8qBmCb5l/addHH2WgdvJwOOgQVKACoUwPvJBfxXYi9NqpVP
         qWxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UoERYCO2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id q137si169572pfc.4.2020.08.21.12.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id nv17so1261911pjb.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
X-Received: by 2002:a17:902:ac84:: with SMTP id h4mr3560513plr.334.1598039073450;
        Fri, 21 Aug 2020 12:44:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o7sm2570901pjl.48.2020.08.21.12.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 24/29] x86/build: Assert for unwanted sections
Date: Fri, 21 Aug 2020 12:43:05 -0700
Message-Id: <20200821194310.3089815-25-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UoERYCO2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for warning on orphan sections, enforce other
expected-to-be-zero-sized sections (since discarding them might hide
problems with them suddenly gaining unexpected entries).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 4b1b936a6e7d..45d72447df84 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -427,6 +427,30 @@ SECTIONS
 	       SIZEOF(.got.plt) == 0xc,
 #endif
 	       "Unexpected GOT/PLT entries detected!")
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.got : {
+		*(.got) *(.igot.*)
+	}
+	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
+
+	.plt : {
+		*(.plt) *(.plt.*) *(.iplt)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
+	.rel.dyn : {
+		*(.rel.*) *(.rel_*)
+	}
+	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
+
+	.rela.dyn : {
+		*(.rela.*) *(.rela_*)
+	}
+	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
 }
 
 #ifdef CONFIG_X86_32
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-25-keescook%40chromium.org.

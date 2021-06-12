Return-Path: <clang-built-linux+bncBC53FPW2UIOBB26WSCDAMGQEO42UYAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 572823A4C6B
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:35:08 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id q15-20020adfc50f0000b0290111f48b865csf3551725wrf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468908; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0HnA6BfecaabVJxT0Da5FpOu4VMBZ/cYRYVkN0TYpN8aO9Pj+vEKBIGT3eg/jA3K3
         j43+3ZyvJXY/RHAT3ShBeGEOnLS6pE8MKecEBnR2FcAapeqAARbGvAq0mxUqq6LgYfaa
         7IcQKopQaKguZiDpe4qBB0vGef98dXs9GpFWu1c09mkMQLoO071MsqkKrVP4eIZApxE3
         1Xnmvlrgxvv5BMTKMll4qsCVqcVUPnDjb3nHtRAjsi/abPbPHtbtVYrOL4zYOkflXnlg
         Gzm16bpZVhHAScCo1WeLwQSEbfrlUf1iH6ig/XiJ/pYuPY+d4MYyTIDQEucrsn/z6w1a
         jMcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=p+qAZrNw6ANyF5BOLLJPMMA26pxFmr/RhfzYEChmAmI=;
        b=qbXot7/xCj5l8ESBKflC4lSRkFo5qsJ7K5rY1UREJ6r+mS48Ih3nXDu+zzXoNmK6ZY
         CUEeUC5ps37Y6lTKVOTmFV0z/W87FK9NMT2NAdqVJw3SNyMytDAoMEODuEiu7Eo3oNrx
         XJMg6M7apXjw6vclvb4Mc8WkAvXoIpgKJ9saI45Z/y4dg5YS/Cd/wwwFy7LUjfEA2SD6
         0YlUaeCL9uZUzsf4fX6fqywyEoBORYxpJ71eZNIW6T4zql/ECAw0i2XPx+ARJZEANSRe
         J9Y6iDcfKxnSI3UKj4VUlBpQioFxPaTEJm/+ZJLm7Ai2Lo7W+bwqoS11mlnqcAjMn/pM
         q8kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XX+1d3vO;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+qAZrNw6ANyF5BOLLJPMMA26pxFmr/RhfzYEChmAmI=;
        b=nkr0LELJp9QoSFP1FAdbU36xV07HZK08T4yEfiV48q18Ffuyuv5rzbxYUgViudRHBL
         XI3kp+k292Y8n7XfOhHTxK0mqSggxi/J9zfBpG81DUEui+8OIkNr5u/YxSktFbmUAdDR
         3qPjuRFY4ZQcVUG46UolLLByBKGxHmXl86fFQAaiq8ZJJQfyO/lKRJNtx+GXE7k9w165
         tAauImbq/ZD6n/XqzkF0Z9JA3Bp76s0QNPL2g8E4euaMifqnPQDgMbQUJYF4CMu/VqNa
         +Bt59J+9EvJIsXVWEZBPjN8ANCzgBVfWgq3Hh5ChC4PDjVFJnnEYjcY4TXyGHQ3kZX+w
         skJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+qAZrNw6ANyF5BOLLJPMMA26pxFmr/RhfzYEChmAmI=;
        b=UzUWnm+xf7/2VMPH/ueg4dN18G/Fh80JLY8MGTHBDreTPESwpxioZ2wi0fg/zLoA2r
         WB4IvugqPTq0zreTWFkJlrbB0O0SqvF2Z5B5XqOXaGkSfuIBlO9F+HVqNPMtD15bDgeq
         y7YRZQ58Z3We+/z+GMW62u9Y+cubH9TlCvHcMRuTRczbZrjqFjKP1lIMLOmhx0BD82sI
         8I+a5Wf63Ko8p5+HlsZikHvN5p9VzdRyWoHt7ls4oEzqgjZeISLSiHBq1BZl/sxXWtHK
         OwwVXuC5PBerE7tEZgcSxv+ry7SW9Jr16nlNMZts65x7bYjdLxj2XP1irrdXTySq6Frw
         Gkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+qAZrNw6ANyF5BOLLJPMMA26pxFmr/RhfzYEChmAmI=;
        b=IHIp90fSrZ+KaY7ex6KS2pVEQIXPOEi4cXJ1OiKOeb6hBQla6HHBc42z4TL6xKwiMQ
         fOc4E+lqzY4Bk+XtGll7YENx4BWznB/Ml4OfuKA9caKkKzOvOaMgqQU3cjq+XiVrgF8c
         3b/qGrtJdNTigwvDOzR3Vx/Ki0zPK2DgW0e9YIelCXCaZzDIYLkOZcwKF+BVQpfSM13A
         KIeghABDglefJxP+1BMPjTpmt5hXXl6w3kzBipE6rt3wEIgu8aEQmhn4aPRCQrtRSd6S
         yFDIl1rb3TVKqSPmc08Kddr1Tdr3oGxUPQ1rVt2Ew5rOWa3ywaDTIkbIECdmp6agKR3P
         Mqzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ckKHOn6tEQS9G9BN/57992ivKfFuWjg0rpzxg4U2kqtqWgRHt
	BazsrSgDq6XcoBcDyo3P3iE=
X-Google-Smtp-Source: ABdhPJxAMnPVi9TTJY6MHpkzBR4SYDunp6ZBT83hhHvehD/Zta/wTPvwj/jTqyNPG85tkHgEsxZz4g==
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr23036218wmh.100.1623468908132;
        Fri, 11 Jun 2021 20:35:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls4056329wrr.3.gmail; Fri, 11 Jun
 2021 20:35:07 -0700 (PDT)
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr6894419wrn.398.1623468907201;
        Fri, 11 Jun 2021 20:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468907; cv=none;
        d=google.com; s=arc-20160816;
        b=F0O1SrifwDCpXHht0qI2gaAGuxEkeKnYe5IQWwuqoM3vDG7QSObmwjGofY+OCe1T1w
         OFX/vwAb4lmC/RlDbJMyKl4t1pV5wVQ14iRNCiu4aeqgm9Kk1Ao5ia0ugRgaYxYY2Ma8
         xbLOqOr11mQ91R8NVfTmKwIJcoUuwTxMxqJgS94O1YuG210kIBrLR5UCs0qwRCw06ler
         NG0X0qAjG10f2YBm4J6uZUxu4bCUYDv/vGwIZedehJsRWTQStTf0D7VZqySb4UNchBZv
         9ZDtM4/Loc6DMkeD/S/dKFYNw7XTpLI927CiUD70R4deeiIFO5v0eDsVL79AQ22JG9Pc
         r98w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=78xQAjO1ty/zMhuJXBJQ0SNn9rzp8kj1m8rkURlW+20=;
        b=MjmDca/Gy/GTKrOBAKb055dV8m4TzEu/Cfs5lmqrI2L3ac2RP8jfp5vK4FiAJlkQeb
         LycEhHvIHVIWoSfNcP8WO2bRhKh2+pJtL6TirDJV4KhBAvTrVROAv/Gct4G7AvHpFTIX
         JFrfH/sOgsioDUAtBSLCXlhIsDTq8pWQVfizl/cNBuJK9IGgAj42g4Fd9u1509D1A4Qw
         VESEI8ihTs7uzSGeSUOq/t7GsCp2+NAZupt/xR7Fd/McoFLrwxBE5kHgB/5pdxz8pEec
         AUf15W3GYFrUGZfH66X6tEVHT/UfEJVxGBS/D39x1SRJx49VwhBChhFxy49OG5Tl6iWw
         2dxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XX+1d3vO;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id r23si348106wra.1.2021.06.11.20.35.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id x14so12194744ljp.7
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:35:07 -0700 (PDT)
X-Received: by 2002:a2e:870d:: with SMTP id m13mr5395268lji.250.1623468906729;
        Fri, 11 Jun 2021 20:35:06 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:35:06 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Jessica Yu <jeyu@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>,
	Alexander Popov <alex.popov@linux.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Alexei Starovoitov <ast@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: morbo@google.com,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Wilson <chris@chris-wilson.co.uk>
Subject: [RFC PATCH 1/5] pgo: Expose module sections for clang PGO instumentation.
Date: Sat, 12 Jun 2021 06:24:22 +0300
Message-Id: <20210612032425.11425-2-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XX+1d3vO;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Expose module sections for clang PGO:
In find_module_sections() add code to grab pointer and size
of __llvm_prf_{data,cnts,names,vnds} sections.

This data is used by pgo/instrument.c and pgo/fs.c
in following patches together with explicitly exposed
 vmlinux's core __llvm_prf_xxx sections.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
the reason of disabling profiling for module.c
is that instrumented kernel changes struct module layout,
and thus invalidates profile data collected from module.c
when optimized kernel it built.

More over the profile data from kernel/module.c
is probably not needed either way.
---
 include/linux/module.h | 15 +++++++++++++++
 kernel/Makefile        |  6 ++++++
 kernel/module.c        |  7 +++++++
 3 files changed, 28 insertions(+)

diff --git a/include/linux/module.h b/include/linux/module.h
index 8100bb477d86..7f557016e879 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -492,6 +492,21 @@ struct module {
 	unsigned long *kprobe_blacklist;
 	unsigned int num_kprobe_blacklist;
 #endif
+#ifdef CONFIG_PGO_CLANG
+	/*
+	 * Keep in sync with the PGO_CLANG_DATA sections
+	 * in include/asm-generic/vmlinux.lds.h
+	 * The prf_xxx_size is the section size in bytes.
+	 */
+	void *prf_data; /* struct llvm_prf_data */
+	int prf_data_size;
+	void *prf_cnts;
+	int prf_cnts_size;
+	const void *prf_names;
+	int prf_names_size;
+	void *prf_vnds; /* struct llvm_prf_value_node */
+	int prf_vnds_size;
+#endif
 #ifdef CONFIG_HAVE_STATIC_CALL_INLINE
 	int num_static_call_sites;
 	struct static_call_site *static_call_sites;
diff --git a/kernel/Makefile b/kernel/Makefile
index 6deef4effbdb..8657d67b771c 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -44,6 +44,12 @@ CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) -fno-stack-protector
 # Don't instrument error handlers
 CFLAGS_REMOVE_cfi.o := $(CC_FLAGS_CFI)
 
+# Don't profile module.c:
+# CLANG_PGO changes the layout of struct module
+# for instrumented kernel so the profile data
+# will mismatch on final build.
+PGO_PROFILE_module.o := n
+
 obj-y += sched/
 obj-y += locking/
 obj-y += power/
diff --git a/kernel/module.c b/kernel/module.c
index b5dd92e35b02..a2f65c247c41 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -3329,6 +3329,13 @@ static int find_module_sections(struct module *mod, struct load_info *info)
 					      sizeof(*mod->static_call_sites),
 					      &mod->num_static_call_sites);
 #endif
+#ifdef CONFIG_PGO_CLANG
+	mod->prf_data = section_objs(info, "__llvm_prf_data", 1, &mod->prf_data_size);
+	mod->prf_cnts = section_objs(info, "__llvm_prf_cnts", 1, &mod->prf_cnts_size);
+	mod->prf_names = section_objs(info, "__llvm_prf_names", 1, &mod->prf_names_size);
+	mod->prf_vnds = section_objs(info, "__llvm_prf_vnds", 1, &mod->prf_vnds_size);
+#endif
+
 	mod->extable = section_objs(info, "__ex_table",
 				    sizeof(*mod->extable), &mod->num_exentries);
 

base-commit: 0039303120c0065f3952698597e0c9916b76ebd5
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-2-jarmo.tiitto%40gmail.com.

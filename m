Return-Path: <clang-built-linux+bncBC2ORX645YPRBGNJZT6AKGQEV4ZYJCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD822975D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 19:36:27 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id q8sf908543otk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 10:36:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603474586; cv=pass;
        d=google.com; s=arc-20160816;
        b=GitqGmkZR36qO02dZ/gwJoWzdMYRpkpfIHOOCmtwoKM/L0x3GuebqF5rcTuVkcvFC7
         KCcUze35lCgM2++VjRH2NAkAF/RvHCmcMIe0bYUjSgIqI60QubLXhdtDxJRLa4A4gdXs
         OWEUQWOvHMcTAzjYbbf/AoLgEtJwyVVWPXytstfzZ0VOLLGktEYB3ILSDHWgBrKSgCSE
         xJLO2Kg+Pz/EhOxBNu1dh5YAurAoJwjibsq4un7zC1m7QlpnQQhBo0p9kyp2knNyt+6z
         vTKnPx+sIVXJ46ho0QjiVVMwwwNS1BwMCowfm20hcly9a1YvHGJBoYRbu33xpgNYLRzL
         b0yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Zu+whdiiIH55005iMfU4hAab/GWELDf4nuG0koDTV8Q=;
        b=THiGSE1QOGVAUY7ZsKbWS/MqZxdhbjnFcoj6+1VjO3AAeEHonzpPB4ygZVbtwE/qGD
         xoS9Gl5nPRKMlCrhqV36DIAlmCht5iTneZ4ird32bT+Djk8g5jP3uCJz+GoZV2SA29RW
         ZreCse+GhWB34OTFmawWwBHEVGgjCsEF3xlZrwnESt7DGvmx4/0DelP+HCNSCTL12V4P
         PQIKXqf0IpxcmA+pgBREPdmj+5bmUe+/XJeLj8AuD4I0oV725DJFWSkt6VJD+qiwbcx+
         zTHPTU6HcZjb2ppbEad21j99MTsw9k3JZCiqns+qoRp7Zwg9iFcwKkhbzuCQsFJucYam
         OoEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z3Q8f+9R;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Zu+whdiiIH55005iMfU4hAab/GWELDf4nuG0koDTV8Q=;
        b=jEa4554QIwwLfMjJvsTncmwcCeVVcmt+60py9f0NgDrQfw+VlfcnD9Syss79kxlFnl
         EI1CpKWnYK9HzGpx3lH+CrALgJAyKFj9wrG0Uvzvft19nVL+DuQsYW3U30QglzhRScsN
         w92z7g4tlbN7AUKEaz16nJBFjHDJmB7fvXxvn3CBsoCiLem49DSaLclSpOcdmMv4J9ao
         rdA/dz7loULoKj9wYLYU41N0MlKfTY17HA4U6eEWVoohZqBRwfgLXHgtREWj1vqzhUt9
         m1h2JdLkpAaNcB7LWQJuP62vQtz+tFeeT7AHvTcJBrjfVZAvrVPSYiUgMQ16vOjrEhqE
         WEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zu+whdiiIH55005iMfU4hAab/GWELDf4nuG0koDTV8Q=;
        b=MBtQULVOCuj9Oj8++3jx4Ya2y7k3+2OlDiYtwKoWkmNg/C2CezcBnxLrAevCmCQP9F
         UgWlgN+0qpqXtG3k+gvv6RvvUXCO0YnsZJE6sFct4+5wmjTRT4RzKbPr4DCiUFdgb6uf
         uQo/c96v+9FJBQmep4bBmlX/cnzbbmr+ha5PYsdejPDqrwRkwuZIHUp2mWv5UAULzIvd
         jco52aZxsVGpVJ8PF+Q5PgFbJdeJBzwQq1PuW/hw+TKZLayeu/QYGegkNX8wzBJSUvts
         wV7g7WqpJSpzN5sWE89WdsGtHGWqV7rvOxiNzqvg+UBMIlP6j62/eo6wqcedGrhTpgx4
         g6Mw==
X-Gm-Message-State: AOAM531+Nv+TvDV3ZKRTWNbDLt0PqHmJUw0U/QWLP0venJyMVkcKyls6
	L/NQ7as8Mw/PDC7PpsptEQ0=
X-Google-Smtp-Source: ABdhPJyxWzqHalp1RA0mLqwm6INQQEbvpg6/QmM8gBBaa5insXwmOkfhkS66QgNtCMi4Xuz85ngUHw==
X-Received: by 2002:a05:6808:f:: with SMTP id u15mr2690792oic.34.1603474585902;
        Fri, 23 Oct 2020 10:36:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:95d1:: with SMTP id p17ls140405ooi.0.gmail; Fri, 23 Oct
 2020 10:36:25 -0700 (PDT)
X-Received: by 2002:a4a:972c:: with SMTP id u41mr2622063ooi.10.1603474585465;
        Fri, 23 Oct 2020 10:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603474585; cv=none;
        d=google.com; s=arc-20160816;
        b=FB7GZqJ2dcdan96GADrVhA1jNsJU2Z1To1w+smP/vT83aNC0EIpw5vjHamXTnypiV+
         g34Goc06ANTxOXyRQuul8VJkVdhQIjrgGk9+7pI2rYW+IGiiWVN32QL2ynEAQzr5mkCV
         GenE0+qgNLk7OAROhPCje+AHv+/ITi4zwgttmttJ7f6mBPHXd+nDEkcz3dnpIvd2qxj+
         yAGYHrZXHwo5szXrEMuU2KFrrNqSYbJLZSRi9pZU/uO9OblCwesS7tJGqCx0Cur68+6S
         /bK5s9RJqngb5H6feJCvwYJb9lt624rek0DWVNrX5wFDwgM4ddH2yR4tU0kLcCSG9srb
         LQtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v3oHNxup2Z/X3RcAQV9SdzT2AuZvE2TJPMlTRy4UVdg=;
        b=Mej9x0xUjKjywHNG05neiPcriroMdLe+EmPLSBAL0+dcaQcQaF2pmVpR+0F+yo5WBI
         gGdSkBRLLUAH7FC5of3p4fraPFqQOFHPCzKGLSNJ325XIIVlhpCmgysJVOuUtUlo5RFS
         PgwjFo2GC5Hz7c+QIg+t3NmQMoN6dmSmQx873b3zZ9N1dZ62se7PlVsZJS4wsgqWLihM
         AHYA2XwvxFHz/TWYU5P+YFxRz2g70/CKy7EkiC0UmFPPPJmm9Cqfk3SNS0B5zilizEj0
         xK+5io+BHY3YtfdT4Szoa8qHS/YOhRufZZ+PgBP8ItFVrgSxcACIZz1Aw0atJMwMvy3/
         021w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z3Q8f+9R;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n185si143744oih.3.2020.10.23.10.36.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 10:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id w21so1885828pfc.7
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 10:36:25 -0700 (PDT)
X-Received: by 2002:a63:370f:: with SMTP id e15mr3039898pga.124.1603474584438;
        Fri, 23 Oct 2020 10:36:24 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id m3sm2611808pfk.23.2020.10.23.10.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 10:36:23 -0700 (PDT)
Date: Fri, 23 Oct 2020 10:36:17 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201023173617.GA3021099@google.com>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z3Q8f+9R;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Wed, Oct 21, 2020 at 05:22:59PM -0700, Sami Tolvanen wrote:
> There are a couple of differences, like the first "undefined stack
> state" warning pointing to set_bringup_idt_handler.constprop.0()
> instead of __switch_to_asm(). I tried running this with --backtrace,
> but objtool segfaults at the first .entry.text warning:

Looks like it segfaults when calling BT_FUNC() for an instruction that
doesn't have a section (?). Applying this patch allows objtool to finish
with --backtrace:

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c216dd4d662c..618b0c4f2890 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2604,7 +2604,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 				ret = validate_branch(file, func,
 						      insn->jump_dest, state);
 				if (ret) {
-					if (backtrace)
+					if (backtrace && insn->sec)
 						BT_FUNC("(branch)", insn);
 					return ret;
 				}


Running objtool -barfld on an allyesconfig+LTO vmlinux.o prints out the
following, ignoring the crypto warnings for now:

__switch_to_asm()+0x0: undefined stack state
  xen_hypercall_set_trap_table()+0x0: <=== (sym)
.entry.text+0xffd: sibling call from callable instruction with modified stack frame
  .entry.text+0xfcb: (branch)
  .entry.text+0xfb5: (alt)
  .entry.text+0xfb0: (alt)
  .entry.text+0xf78: (branch)
  .entry.text+0x9c: (branch)
  xen_syscall_target()+0x15: (branch)
  xen_syscall_target()+0x0: <=== (sym)
.entry.text+0x1754: unsupported instruction in callable function
  .entry.text+0x171d: (branch)
  .entry.text+0x1707: (alt)
  .entry.text+0x1701: (alt)
  xen_syscall32_target()+0x15: (branch)
  xen_syscall32_target()+0x0: <=== (sym)
.entry.text+0x1634: redundant CLD
do_suspend_lowlevel()+0x116: sibling call from callable instruction with modified stack frame
  do_suspend_lowlevel()+0x9a: (branch)
  do_suspend_lowlevel()+0x0: <=== (sym)
... [skipping crypto stack pointer alignment warnings] ...
__x86_retpoline_rdi()+0x10: return with modified stack frame
  __x86_retpoline_rdi()+0x0: (branch)
  .altinstr_replacement+0x13d: (branch)
  .text+0xaf4c7: (alt)
  .text+0xb03b0: (branch)
  .text+0xaf482: (branch)
  crc_pcl()+0x10: (branch)
  crc_pcl()+0x0: <=== (sym)
__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
  .altinstr_replacement+0x20b: (branch)
  __x86_indirect_thunk_rdi()+0x0: (alt)
  __x86_indirect_thunk_rdi()+0x0: <=== (sym)
.head.text+0xfb: unsupported instruction in callable function
  .head.text+0x207: (branch)
  sev_es_play_dead()+0xff: (branch)
  sev_es_play_dead()+0xd2: (branch)
  sev_es_play_dead()+0xa8: (alt)
  sev_es_play_dead()+0x144: (branch)
  sev_es_play_dead()+0x10b: (branch)
  sev_es_play_dead()+0x1f: (branch)
  sev_es_play_dead()+0x0: <=== (sym)
__x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0
  .altinstr_replacement+0x107: (branch)
  .text+0x2885: (alt)
  .text+0x2860: <=== (hint)
.entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x21: (alt)
  .entry.text+0x1c: (alt)
  .entry.text+0x10: <=== (hint)
.entry.text+0x15fd: stack state mismatch: cfa1=7-8 cfa2=-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x15dc: (alt)
  .entry.text+0x15d7: (alt)
  .entry.text+0x15d0: <=== (hint)
.entry.text+0x168c: stack state mismatch: cfa1=7-8 cfa2=-1+0
  .altinstr_replacement+0xffffffffffffffff: (branch)
  .entry.text+0x166b: (alt)
  .entry.text+0x1666: (alt)
  .entry.text+0x1660: <=== (hint)

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201023173617.GA3021099%40google.com.

Return-Path: <clang-built-linux+bncBCS7XUWOUULBBZFGY6AAMGQEB4CJ3YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA760306571
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 21:56:05 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id r190sf2522817qkf.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 12:56:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611780964; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dj4KRRvNZCcGB5TQMJCdUZUjdrkq70/CBhStSvdhRXwHWbYolhzmn2i+FkgOo3JFWn
         Fw49jEmIXFb5fmkRk16aCcvUmzUgxJQLHHea+SnzboOzcc+WsZcdA4soJuBpb1kaZHhC
         y8dFiAzpnNoib4rpNy1nUYLZRACJOwN1xBDrggJpAi3zZaSA4jjDGEBzUDJmJUMAWJEb
         SE4epHSAjH+kU7j0OUZ/egE0ai71UevaltbzYWv6eGBI/fbqJZDpepF0at15U6/YUlOS
         DH8jiJylkT3Nqknat9zj1Iif2plV/IuMwPlb7qm3O9GnIkPpaJhQTSNZVbAo7T6Hu42n
         TokQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=gyCUJ4uFOjOky9XKYRcCoQfjN09X+C0EgGCGum/Tw6w=;
        b=Mqv1MBt1JWd6B5js/pFfAvaKOAtlRH5oCyx2ZmJiCaJtPCMV6jcF2TGXXmw+qh2ZYY
         WsqtPAk6DEbq7stfEeYifIa5DXuGHkW4ZePwWbJmFpf2iv5BORcBSCyehnmyiYgKZyJI
         0De46Tsepmuh/2+uk2O1ksMLmdj+FPnrg9671I0/hTB8YtslVhtugqdGeKNKRN53rMZh
         4Ije7Eg7rEhBgeMHX8+dStCvuH2WUTwE5DOyW3jBoz2XelObGfg0ZgLUNP2GGdf1S3Tq
         TL/Df5l14pa/PqWWMMAroyLYqX7fcxHRMiyZacDGAfhIiIVnCQkN+803sXffbTjxnpzo
         nUcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OEss27zf;
       spf=pass (google.com: domain of 3y9mryackevgc0iah0o6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Y9MRYAcKEVgC0IAH0O6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gyCUJ4uFOjOky9XKYRcCoQfjN09X+C0EgGCGum/Tw6w=;
        b=oZRb2w913nhdhi1utNUPXXubwPAoephsdLgeC/S1iE6SI6tcVdzkbdOJvLASDRK9ZS
         7tm2f3KLQqGJE4kurR+Lf6ZPuz7oqDnZ2YvyIydmIbQyG2gZEw9P1TtDhcZW7yPW9imB
         /VgrZxpJiOS9EwggZPx3PJQ6h4YaUmYG0zWiBR9/h8Sn8i8qm7QZ6LEE1+5/p2oio6L0
         pBRLykVQ7oCokTxKeLQdfhUK74uZurmHkG9xTmYq297lGI3swAD+X66WzNg3NKW27bET
         m8TUnN5ZKmGaUmnEZbL1GuKfdaQC4mpUYcK0ynFtBiczNdO+gek6mCz2/5g+dZnqq1gu
         elaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyCUJ4uFOjOky9XKYRcCoQfjN09X+C0EgGCGum/Tw6w=;
        b=hc18mRf8OdpdFX0dNpATxrztD8X0QHc2XdcvZK25FjZ2JgXxsb2wc0YI96PPokfRUP
         Ak7fEFJzRzePCZ3N7uoY1Zk1FCDx3ymmtoOBABWjQEJG2ZNZJOovOVIrgDoDz4SprcuK
         tv9qdm51aABLTR1EmWB1Xc61iDigTMNdX0ZEO3C8OlcI6dpSKxcF2yLWwDADpABeW4uu
         SfguZXDFtoUN5L0hRCDhazh5Y1mWepTjC9fyXVFLwSs0JIgxxubGFuUb/N7gNFbeK/KF
         Rgqwl0zqL82oesb6ju4uTwZVCtt34VCbSOL7m7ID/YRpn+OdF4aexwOPxyim5Jr8pZ5J
         2Dhw==
X-Gm-Message-State: AOAM531PXWsufqmOpxlRsHIhBKcVx05vtq8fD81NeWbD/8elKV0WCD3U
	Ov4bja9OdvaUwd2lX37xjrc=
X-Google-Smtp-Source: ABdhPJxMW9OPHG0fkPX1UW+BecYAVREkAICnYWhu+UfwXgZ+QAnvZ6B9g4DccK3J6+ssIr7hJ5efaA==
X-Received: by 2002:a0c:c78c:: with SMTP id k12mr12428064qvj.47.1611780964666;
        Wed, 27 Jan 2021 12:56:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12cc:: with SMTP id e12ls1666547qkl.10.gmail; Wed,
 27 Jan 2021 12:56:04 -0800 (PST)
X-Received: by 2002:a37:ae01:: with SMTP id x1mr12518874qke.492.1611780964190;
        Wed, 27 Jan 2021 12:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611780964; cv=none;
        d=google.com; s=arc-20160816;
        b=QMEMgG3KgBsls5FL21LBcIP73JqAsrFZL4g+4lQpn/CSOa170+lqq3Vk1EpxZP2PcD
         ruehTAo+lsv/kbZ1jtd6AC3Sy4Mbd3XBRz2gRWGrWru12jLZeKcJqkLR4kKdG0UHsg3O
         N5OwEkAA4TjYWOUSWSKUalp4sxalICb19AUEG01KFPV2YgO5GHoA99UFU11k/rh9A9M8
         SUpZTTVPf9W702R2phgQciWawuB34MvY/dQ2ev8Ft0/MbpwYVOwsqP8zxqimhHUSG+J3
         GZuen/YJzDm1YCllKEIeZ6VZsuCdHQDmPz7K7Cmp/16hw9tq2kBk8yWkb7m+9dOR8ClA
         Zigg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=afydIjTboHZYNt7UhxBI9r/K8JAPb3TsRLb2cVHkJug=;
        b=T9kDTsgg/3W12mnrqaAievGDUnDMJCfbEAtInOOgQbh9IG8CSO5DI59Zu25KAEPu0d
         Bjxcw5ANijAXMzuL8OQewDkuk4M9r9kNH7+1rFINE6IAwCmTX9/TOAaiwIUZUQq0TnHQ
         dA6L8s2u8UOlWnncNc65O+h1r2/pIW11gBG00gq2eBZgBzwudlK9kA2gLJkXFGWfr8GA
         F3jgUGFLR2tqxeT2xE5VCSCZxNEhNAVnsExwmZsFjDKscCAkQxwBPcV8VwRJm5vDG4ir
         dRUnNu7XSPz6Hr5rSkYLJE4i/q8EBIdJuqMRgHcPeDxFwtwPkutvvYL6WJL9jmTyqZqM
         Pc5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OEss27zf;
       spf=pass (google.com: domain of 3y9mryackevgc0iah0o6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Y9MRYAcKEVgC0IAH0O6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id j40si292407qtk.2.2021.01.27.12.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 12:56:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 3y9mryackevgc0iah0o6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w5so2027125qts.9
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 12:56:04 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a05:6214:12ab:: with SMTP id
 w11mr12230114qvu.8.1611780963780; Wed, 27 Jan 2021 12:56:03 -0800 (PST)
Date: Wed, 27 Jan 2021 12:56:00 -0800
In-Reply-To: <20210125172956.j2prlchhqwfcgzuc@google.com>
Message-Id: <20210127205600.1227437-1-maskray@google.com>
Mime-Version: 1.0
References: <20210125172956.j2prlchhqwfcgzuc@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH v4] x86: Treat R_386_PLT32 as R_386_PC32
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OEss27zf;       spf=pass
 (google.com: domain of 3y9mryackevgc0iah0o6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3Y9MRYAcKEVgC0IAH0O6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
R_386_PLT32 can be treated the same as R_386_PC32.

R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types which can
only be used by branches. If the referenced symbol is defined
externally, a PLT will be used.
R_386_PC32/R_X86_64_PC32 are PC-relative relocation types which can be
used by address taking operations and branches. If the referenced symbol
is defined externally, a copy relocation/canonical PLT entry will be
created in the executable.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
This avoids canonical PLT entries (st_shndx=0, st_value!=0).

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
GCC/GNU as convention is to use R_386_PC32 for non-PIC PLT and
R_386_PLT32 for PIC PLT. Copy relocations/canonical PLT entries are
possible ABI issues but GCC/GNU as will likely keep the status quo
because (1) the ABI is legacy (2) the change will drop a GNU ld
diagnostic for non-default visibility ifunc in shared objects.
https://sourceware.org/bugzilla/show_bug.cgi?id=27169

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit R_386_PLT32 for compiler generated function declarations,
because preventing canonical PLT entries is weighed over the rare ifunc
diagnostic.

Link: https://github.com/ClangBuiltLinux/linux/issues/1210
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

---
Change in v2:
* Improve commit message
---
Change in v3:
* Change the GCC link to the more relevant GNU as link.
* Fix the relevant llvm-project commit.
---
Change in v4:
* Improve comments and commit message
---
 arch/x86/kernel/module.c |  1 +
 arch/x86/tools/relocs.c  | 12 ++++++++----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 34b153cbd4ac..5e9a34b5bd74 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..1c3a1962cade 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -867,9 +867,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
-		 * NONE can be ignored and PC relative relocations don't
-		 * need to be adjusted.
+		 * NONE can be ignored and PC relative relocations don't need
+		 * to be adjusted. Because sym must be defined, R_386_PLT32 can
+		 * be treated the same way as R_386_PC32.
 		 */
 		break;
 
@@ -910,9 +912,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
-		 * NONE can be ignored and PC relative relocations don't
-		 * need to be adjusted.
+		 * NONE can be ignored and PC relative relocations don't need
+		 * to be adjusted. Because sym must be defined, R_386_PLT32 can
+		 * be treated the same way as R_386_PC32.
 		 */
 		break;
 
-- 
2.30.0.280.ga3ce27912f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127205600.1227437-1-maskray%40google.com.

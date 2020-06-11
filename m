Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBZOQRL3QKGQE3BO2CEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 8040A1F6F9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 23:55:50 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g72sf6369229qke.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 14:55:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591912549; cv=pass;
        d=google.com; s=arc-20160816;
        b=KhfrHDgD+zX9rN0vSZH9F19Q2fwxB3JiyThXkrwJsZOTId5q3Hc0kimgdMH1Hfgfas
         iBlb9s20I+8BZ4JPxc9VZVkCoufsIvCzN7YGn7ziclF8hih9Wd0kYI/06hxdxDnK/zi9
         w+XyCxHEQq40z3X/oThYVEKz8Bk8hZIxe5TqjcYEMJQAJ0TWvVg9ry68hsM7mRX1LAqg
         JL848Dxq6Q1Ep1bYORORBirGmv0pK8+VE+lZhiEWLU/rc7ZcnCd25zf6Y1wiwgPeYhk+
         CWTj68/owuEfI3mVzb5ZY+05qGeAztqpsYKjRICVNna93uaay0V74w3G1cu+iNa7DGeU
         g5/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EyNux+XcFYYmOEmD80S59h0WxfTUx4Ip/PmkMnNMOXo=;
        b=WjxMUfFQI4pTI2lBHIeAZLd4cDK6EAlzgE5Td/dD1TV2MCyTCa6puqkiwROx4pgKE+
         FN7kynbIXABLvWec/HSEqtgPVVukXLPk7J3WrNmEXS/K2YZm70tn+yVLV6BT+Pscd+qa
         PVFtpU4NHqza6LoCD60m4NF5FHGrhvGFVv2raC0ymHyedVsdWYa2rGCxyyX4hDz0ZkFm
         ibSptYTV1u5eHdLg3ssWDjTF0X1FX+yE+KE76PV+G3yiXbsJ65dyim2VjglksYM+Ehql
         KnjyiElaua0+kvp5vyNX4ZKt0bI7TYTht/xYKN2IQKTAxBSvvQUe1C2okI3DFZQyBDSM
         qpBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=e8Frfs00;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EyNux+XcFYYmOEmD80S59h0WxfTUx4Ip/PmkMnNMOXo=;
        b=YN6VuVbLTjJOfcyqRIs3cJb95iHICTf+DytJ0eF9JtZ+ueCPdM1+YiVwfJ+n/TFKA1
         cDHuuHya8CBVGDjrUnDjgkP5n29M8ZJaaUgpSqjWeq2eiN93DeBfWdyOAXZHWib+Ye3f
         W2aod0d7AQRwW/OiyWp3mqnkAyyp1JuvIxfk6LRP6P8rsUMVqu9CYwtWs9qyqgYB7ND0
         H9YmUmPwIR6K2wgF/ZsSv9E1DqCgM3aOIyUKfC2ttUqSNYHiozv5XBWzYoXugRnQTpN+
         bcgY5gzpfeNdxhO+wbW9pIb0ffoY/N964zR/8zuv2EZ07MshLDuirlKtQyMsXjNOm6OM
         0how==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EyNux+XcFYYmOEmD80S59h0WxfTUx4Ip/PmkMnNMOXo=;
        b=FqUWosMa4a7cd4w6ceKnE59O/auPBIZcZOU/i/I5XexcbBJwcKH68bReRuHgITKhBA
         EYZsVWv1GBsYljYmK5Q3QwAHyOQR+UxyExe6mPf6WR0Bb8ozCfXL7bcnMWvtVFqCdW6/
         iv+qVGRZho6gGHzmSz+X7loLwotCE7ELXN5uQhOW8zjpWbYNQQfVg8gRVmG6QxzEXsDF
         YlWZqugf+RndHuD3cz6BumwsgdhXZA34tFu3qlY2OglUbR8gpWX/BoDb2PqTg6oxdJZi
         Y1WVvYr477vI7AwxTbuxEBQiNPYRWNL3SmFiir6lsYLECnVW2MNTnuxyHiLvOfpIMOhh
         XV9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312UVTm4yUjzKNx9eLXTZYDhtITs3sD7TgG02Y8+wDnewi3BxYv
	GmoY9SDWpzdNAy/Uaxz3lPk=
X-Google-Smtp-Source: ABdhPJwYeToUmavqRqzc4ubn2TF418MiA82S9klkboeXxrvWWg/Xup8xBQYYEcMeGcKJkWkod9oxrw==
X-Received: by 2002:a37:a0b:: with SMTP id 11mr36551qkk.501.1591912549411;
        Thu, 11 Jun 2020 14:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56a7:: with SMTP id bd7ls771640qvb.6.gmail; Thu, 11 Jun
 2020 14:55:49 -0700 (PDT)
X-Received: by 2002:a0c:f888:: with SMTP id u8mr9710794qvn.130.1591912549049;
        Thu, 11 Jun 2020 14:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591912549; cv=none;
        d=google.com; s=arc-20160816;
        b=jD9wjskumzcOaZmH9wg17ZM0bNhn7xp0oh7Ip7chPgk083TeAOjObk7UB8qwLG2sGn
         UVMOTIWaKvQqjS+VxEsHnatQRTWApfkj19yHzN3hiJ2Hao/bsuYL3oafe1ylzM6SfxMh
         g2LFrYJ9YQNRmZPb/8UqlF2eulh5ia3wu5DVvAnHCSo4suJ+GPrT2fBcMuHX60/+6u0q
         RywG1GtXuYR4ItDKty6em5fy3wPUyBlKMCrpPUwUx7Oc2N7+HSeb2PBp8XuF3b6jVoDC
         aLlcxYlOtnoyRdH8XxSTkAHjO9lBPQGMC6AF2scsf79cz1ZAyiK9xqGdepYFOCmRSiFq
         yBqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+D9mFCAnJgtDS6+KSuSp9KevNloc9SQBHaGYlbUhzxw=;
        b=eTlnfPk+OuM3ux0igIz+2Dz74kuTuYx/BtJ6TvEj7zjvtEt2xtf5aW9Foq2fPZAdOk
         DPFyy0dwPK743XLAZNEYrBRdpNN9xfXs7HfEu200rlBqq2pYY1wDye5817AWtN+dC5NE
         5IyA51wHWkHtsdeR00S/Rl1n6GzonmVJRbAxLiRfZozeoQHGG4AFhrAG5lsLmekV9qFv
         X0oO8aliKglwERR1TDkJ5NRTGr78DfMPvgdPFz/nMp3Uv2O+IpkkgSDTt3/lIogV2BJf
         gJEEnre1gNcQ2UqHiPBJtHkjVLlm3LZAVpqZBXSPoLZVQA+W0F5cHsSoV3gMBpGvWNgl
         hwZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=e8Frfs00;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x78si224611qka.4.2020.06.11.14.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 14:55:48 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVAi-0001nI-WD; Thu, 11 Jun 2020 21:55:41 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 755FB984C19; Thu, 11 Jun 2020 23:55:38 +0200 (CEST)
Date: Thu, 11 Jun 2020 23:55:38 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200611215538.GE4496@worktop.programming.kicks-ass.net>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
 <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200608110108.GB2497@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=e8Frfs00;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 08, 2020 at 01:01:08PM +0200, Peter Zijlstra wrote:
> On Mon, Jun 08, 2020 at 09:57:39AM +0200, Dmitry Vyukov wrote:
> 
> > As a crazy idea: is it possible to employ objtool (linker script?) to
> > rewrite all coverage calls to nops in the noinstr section? Or relocate
> > to nop function?
> > What we are trying to do is very static, it _should_ have been done
> > during build. We don't have means in existing _compilers_ to do this,
> > but maybe we could do it elsewhere during build?...
> 
> Let me try and figure out how to make objtool actually rewrite code.

The below is quite horrific but seems to sorta work.


It turns this:

  12:   e8 00 00 00 00          callq  17 <lockdep_hardirqs_on+0x17>
                        13: R_X86_64_PLT32      __sanitizer_cov_trace_pc-0x4

Into this:

  12:   90                      nop
  13:   90                      nop
                        13: R_X86_64_NONE       __sanitizer_cov_trace_pc-0x4
  14:   90                      nop
  15:   90                      nop
  16:   90                      nop


I'll have to dig around a little more to see if I can't get rid of the
relocation entirely. Also, I need to steal better arch_nop_insn() from
the kernel :-)

---
 tools/objtool/arch.h            |  2 ++
 tools/objtool/arch/x86/decode.c | 24 ++++++++++++++++++++++
 tools/objtool/check.c           | 15 +++++++++++++-
 tools/objtool/elf.c             | 45 ++++++++++++++++++++++++++++++++++++++++-
 tools/objtool/elf.h             | 11 ++++++++--
 5 files changed, 93 insertions(+), 4 deletions(-)

diff --git a/tools/objtool/arch.h b/tools/objtool/arch.h
index eda15a5a285e..3c5967748abb 100644
--- a/tools/objtool/arch.h
+++ b/tools/objtool/arch.h
@@ -84,4 +84,6 @@ unsigned long arch_jump_destination(struct instruction *insn);

 unsigned long arch_dest_rela_offset(int addend);

+const char *arch_nop_insn(int len);
+
 #endif /* _ARCH_H */
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index 4b504fc90bbb..b615c32e21db 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -565,3 +565,27 @@ void arch_initial_func_cfi_state(struct cfi_init_state *state)
 	state->regs[16].base = CFI_CFA;
 	state->regs[16].offset = -8;
 }
+
+const char *arch_nop_insn(int len)
+{
+	static const char insn[16] = {
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+		0x90,
+	};
+
+	return insn;
+}
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5fbb90a80d23..487b4dc3d122 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -765,6 +765,17 @@ static int add_call_destinations(struct objtool_file *file)
 		} else
 			insn->call_dest = rela->sym;

+		if (insn->sec->noinstr &&
+		    !strncmp(insn->call_dest->name, "__sanitizer_cov_", 16)) {
+			if (rela)
+				elf_write_rela(file->elf, rela);
+
+			elf_write_insn(file->elf, insn->sec,
+				       insn->offset, insn->len,
+				       arch_nop_insn(insn->len));
+			insn->type = INSN_NOP;
+		}
+
 		/*
 		 * Whatever stack impact regular CALLs have, should be undone
 		 * by the RETURN of the called function.
@@ -2802,11 +2813,13 @@ int check(const char *_objname, bool orc)
 		if (ret < 0)
 			goto out;

+	}
+
+	if (file.elf->changed) {
 		ret = elf_write(file.elf);
 		if (ret < 0)
 			goto out;
 	}
-
 out:
 	if (ret < 0) {
 		/*
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 84225679f96d..705582729374 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -525,6 +525,7 @@ static int read_relas(struct elf *elf)
 				return -1;
 			}

+			rela->idx = i;
 			rela->type = GELF_R_TYPE(rela->rela.r_info);
 			rela->addend = rela->rela.r_addend;
 			rela->offset = rela->rela.r_offset;
@@ -713,6 +714,8 @@ struct section *elf_create_section(struct elf *elf, const char *name,
 	elf_hash_add(elf->section_hash, &sec->hash, sec->idx);
 	elf_hash_add(elf->section_name_hash, &sec->name_hash, str_hash(sec->name));

+	elf->changed = true;
+
 	return sec;
 }

@@ -779,7 +782,43 @@ int elf_rebuild_rela_section(struct section *sec)
 	return 0;
 }

-int elf_write(const struct elf *elf)
+int elf_write_insn(struct elf *elf, struct section *sec,
+		   unsigned long offset, unsigned int len,
+		   const char *insn)
+{
+	Elf_Data *data = sec->data;
+
+	if (data->d_type != ELF_T_BYTE || data->d_off) {
+		printf("ponies\n");
+		return -1;
+	}
+
+	memcpy(sec->data->d_buf + offset, insn, len);
+
+	elf_flagdata(data, ELF_C_SET, ELF_F_DIRTY);
+
+	sec->changed = true;
+	elf->changed = true;
+
+	return 0;
+}
+
+int elf_write_rela(struct elf *elf, struct rela *rela)
+{
+	struct section *sec = rela->sec;
+
+	rela->rela.r_info = 0;
+	rela->rela.r_addend = 0;
+
+	gelf_update_rela(sec->data, rela->idx, &rela->rela);
+
+	sec->changed = true;
+	elf->changed = true;
+
+	return 0;
+}
+
+int elf_write(struct elf *elf)
 {
 	struct section *sec;
 	Elf_Scn *s;
@@ -796,6 +835,8 @@ int elf_write(const struct elf *elf)
 				WARN_ELF("gelf_update_shdr");
 				return -1;
 			}
+
+			sec->changed = false;
 		}
 	}

@@ -808,6 +849,8 @@ int elf_write(const struct elf *elf)
 		return -1;
 	}

+	elf->changed = false;
+
 	return 0;
 }

diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
index f4fe1d6ea392..4a3fe4f455c5 100644
--- a/tools/objtool/elf.h
+++ b/tools/objtool/elf.h
@@ -64,9 +64,10 @@ struct rela {
 	GElf_Rela rela;
 	struct section *sec;
 	struct symbol *sym;
-	unsigned int type;
 	unsigned long offset;
+	unsigned int type;
 	int addend;
+	int idx;
 	bool jump_table_start;
 };

@@ -76,6 +77,7 @@ struct elf {
 	Elf *elf;
 	GElf_Ehdr ehdr;
 	int fd;
+	bool changed;
 	char *name;
 	struct list_head sections;
 	DECLARE_HASHTABLE(symbol_hash, ELF_HASH_BITS);
@@ -118,7 +120,7 @@ struct elf *elf_open_read(const char *name, int flags);
 struct section *elf_create_section(struct elf *elf, const char *name, size_t entsize, int nr);
 struct section *elf_create_rela_section(struct elf *elf, struct section *base);
 void elf_add_rela(struct elf *elf, struct rela *rela);
-int elf_write(const struct elf *elf);
+int elf_write(struct elf *elf);
 void elf_close(struct elf *elf);

 struct section *find_section_by_name(const struct elf *elf, const char *name);
@@ -132,6 +134,11 @@ struct rela *find_rela_by_dest_range(const struct elf *elf, struct section *sec,
 struct symbol *find_func_containing(struct section *sec, unsigned long offset);
 int elf_rebuild_rela_section(struct section *sec);

+int elf_write_rela(struct elf *elf, struct rela *rela);
+int elf_write_insn(struct elf *elf, struct section *sec,
+		   unsigned long offset, unsigned int len,
+		   const char *insn);
+
 #define for_each_sec(file, sec)						\
 	list_for_each_entry(sec, &file->elf->sections, list)


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611215538.GE4496%40worktop.programming.kicks-ass.net.

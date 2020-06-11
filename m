Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB66RRL3QKGQEBQYFCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C173A1F6FA6
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 23:58:20 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 49sf3277502otg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 14:58:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591912699; cv=pass;
        d=google.com; s=arc-20160816;
        b=SheA07FGHg/0k5l5WIzEDqyOWFHBKxXq1RGUw6UZsKIEcyUcIBmYAwMztFLg+Jrbmm
         U5nAwvygi9WkgzCk/0OZko1+lT8z6a2Wuq8SVs0TYgf1bfjvzoPha/rdJqiq4bff2wUs
         kVGvjANlAu9Su7dspxVQINfDE6RNHq9e5j6IVKjLyzV1CKZIZcQGk0OYmRHfv9tcngel
         nbT8S2bDb/PVnu0VpmyVJZxrjneyARHKhA/PRFPs0fBVwEvzMzQ7kFGltF3aUVjRHDrE
         JF9slDirwtS2ezcaJe7ADr7MiTOynbeS/pW27dpb0i39d79Xfq1AqzYTjPuM+Q3rqxET
         3C9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4RDA3bQh935zdw4OwZ7YFJTfd3U1pxSlF71gCC2Tngk=;
        b=xytdMlN+77uf2I9C3cj50QloBxtFi7XqUIHdgY/YAXuP/cq5T1IO1o1bUDTo0vbd7z
         FYxHmjWNQ61Bo4xQJJbPJ98xkLkqqcxNguR506Scn01mDWcnQNWzQY64lH2HQMH6bYVZ
         MI2RFsOKcq/gkMFa5DL4yLk+YtU2mAMK0D0+Gk70yaFAA5t15y+yZKCbRG0jNa2IBrPQ
         Pl5KSU79hfEON93uoA7pS8mMxxYhywliJNHYk+5U5GNsnoNrk+nx0kvF8kzJyH/WTw40
         XtFILhNnru2UOaUWkoDbrT0na+NlL8JA9vcvax72cN+6gPye9nzHJQssSZqp9MLBLzqW
         BlSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UKvh5qNT;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4RDA3bQh935zdw4OwZ7YFJTfd3U1pxSlF71gCC2Tngk=;
        b=fRjHBMh2dN7SjDFzS3fsVmWzDASuF17WtVJtWxy+CbAYnE2L9n8yCc+AUM7+IxoXMB
         TLpfrRTEKOmrrVOMtVi2ZoipJtcUKN5QOoaK0HksH0wo8SzGUGz1ELyZxbN396l2jdCN
         r+zAQEjl4agIhEXmVfbJyDRaj9cBkDBiMPHs1J+JZj4+of8LHYfD0wHBJQJE22Moo55i
         aK2rPG1Y99D0JbSYxy4C22r9fFNVYaEHVANdZoGiUOSg7Cf2WACZWknx4Hjcu+fVn9qp
         Cw/SogxIGXmCnLmz1yZ4/2KHQssGnYPKLVYTGJa6vM4pZNUqP6sRCjNnIf8Cb41l/oHC
         ohFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4RDA3bQh935zdw4OwZ7YFJTfd3U1pxSlF71gCC2Tngk=;
        b=QKMxBXcNKBi5kyO68EJYpNzdRDV/Olarwjz0V2b+uKa73dKttXW+P+XLillhmZnhDi
         mwE9ejZo7LkkDzs2UrDWvX5uediSa5Uu7WpMNfVWsbY+M2Y8xsvvnDa+AVGEcILXGfAt
         s4pJTiYpjFKam99hlsFdu8raWjquuI3h0Wf6c+XTVnv4t30uWZO+oQqHJYch8JZ4yf12
         dcnyS21ZB1bpLuGlF1NRTsyZswPz37lKWj1nTKAHHDK9faaa+dOTkBSE86/DAOWoNXMX
         z3SfWbgm7aTHWVHmtsyZ59OONMT4UOP1K9x8sXKNbn1CA7FtSkUw2X9ldun5Lip68sKf
         AH7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z4L7VFX9/d+xSAChw78kMBG7VOC2VvYpgnb4PqLjAvUyw64gR
	OhWm0hYdQHwFHDYo9630zgE=
X-Google-Smtp-Source: ABdhPJxo9WOyBg0cu3J38tvqU910I/31MaA/kNIjrl9GfwDtM+vykIuvZaQVFhevaE4IjacB4YUcbw==
X-Received: by 2002:a9d:7852:: with SMTP id c18mr8268451otm.82.1591912699357;
        Thu, 11 Jun 2020 14:58:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls733065oif.9.gmail; Thu, 11 Jun
 2020 14:58:19 -0700 (PDT)
X-Received: by 2002:aca:f0c:: with SMTP id 12mr49510oip.93.1591912698936;
        Thu, 11 Jun 2020 14:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591912698; cv=none;
        d=google.com; s=arc-20160816;
        b=ERAe3GCmIyuma+1k1Qd2CFx5OFOBNUPagOAUkFmvVLaTqke51S5hQGD5Cjb8sTYveS
         m18yyCJztKgXvcdsQZA2qCp8sVxvz0LR4RZD2gLavLshXsOFf3XdCv3SHhRkCO+VPsV2
         AdUfDLsH1jBPjDRi2MU1dRHEnZ3cvbP0uhiZ/se4KEfhNb8kJ8+/QeuSITzAd+tonn9Q
         fJd6jQNUgZqmYyg6kKaTz+Fus8jFrWVAE3D+QH6Kdn5yfF7iM8y3V/jaeU5VqbSHD4aZ
         0GMTwFVcAHr9SKz6TVRaLp9SJRqjewNV4SNMCjwjq7JRWUQaatMnFL6vT27lBA6MmXbX
         JKwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gCgkOxrFSDScVIugp6mPkt7Cs9XB/HFiGbAVt90jm4w=;
        b=0lve3krMQJsrsS10+zLbsHRGeI6Z2RMrZzlIm61KOVP9Q1z6zwpbDHj7bwhKg7Jw8W
         mG9fNP6t1f21Lim2zBSV0yd6Wjued5DymXfVEaoR4e0jq8DOfsg4y4Ir6qHwwjuiNhpc
         0g3MJdhsIiw/JOhSI4GTPtw6ix5iJQ0DiOfnlqsIi991ocKDvePTJeIDc7BOxGJsJLwp
         DKbNaZzGg6AoKgYh7JJ2XIPxzAsfElLCXZsj8vr++bBrb0aLwL6rvZHlrbC/q3Vu1F+A
         Vg7VsZZGgYF25WQPMzqIQVSNcaWVWBA6VJvT0J+x8UEMnqLE9EGFrkiCIX/9yxsNZ8k7
         deBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UKvh5qNT;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f133si139680oib.5.2020.06.11.14.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 14:58:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVDC-00024w-T7; Thu, 11 Jun 2020 21:58:15 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id E42F0984C19; Thu, 11 Jun 2020 23:58:12 +0200 (CEST)
Date: Thu, 11 Jun 2020 23:58:12 +0200
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
Message-ID: <20200611215812.GF4496@worktop.programming.kicks-ass.net>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
 <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200611215538.GE4496@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=UKvh5qNT;
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

On Thu, Jun 11, 2020 at 11:55:38PM +0200, Peter Zijlstra wrote:
> On Mon, Jun 08, 2020 at 01:01:08PM +0200, Peter Zijlstra wrote:
> > On Mon, Jun 08, 2020 at 09:57:39AM +0200, Dmitry Vyukov wrote:
> > 
> > > As a crazy idea: is it possible to employ objtool (linker script?) to
> > > rewrite all coverage calls to nops in the noinstr section? Or relocate
> > > to nop function?
> > > What we are trying to do is very static, it _should_ have been done
> > > during build. We don't have means in existing _compilers_ to do this,
> > > but maybe we could do it elsewhere during build?...
> > 
> > Let me try and figure out how to make objtool actually rewrite code.
> 
> The below is quite horrific but seems to sorta work.
> 
> 
> It turns this:
> 
>   12:   e8 00 00 00 00          callq  17 <lockdep_hardirqs_on+0x17>
>                         13: R_X86_64_PLT32      __sanitizer_cov_trace_pc-0x4
> 
> Into this:
> 
>   12:   90                      nop
>   13:   90                      nop
>                         13: R_X86_64_NONE       __sanitizer_cov_trace_pc-0x4
>   14:   90                      nop
>   15:   90                      nop
>   16:   90                      nop
> 
> 
> I'll have to dig around a little more to see if I can't get rid of the
> relocation entirely. Also, I need to steal better arch_nop_insn() from
> the kernel :-)

Damn, paste buffer confusion, this is the right version.

---
 tools/objtool/arch.h            |  2 ++
 tools/objtool/arch/x86/decode.c | 24 ++++++++++++++++++++++
 tools/objtool/check.c           | 17 +++++++++++++++-
 tools/objtool/elf.c             | 45 ++++++++++++++++++++++++++++++++++++++++-
 tools/objtool/elf.h             | 11 ++++++++--
 5 files changed, 95 insertions(+), 4 deletions(-)

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
index 5fbb90a80d23..6f5e9c9465cb 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -765,6 +765,19 @@ static int add_call_destinations(struct objtool_file *file)
 		} else
 			insn->call_dest = rela->sym;
 
+		if (insn->sec->noinstr &&
+		    !strncmp(insn->call_dest->name, "__sanitizer_cov_", 16)) {
+			if (rela) {
+				rela->type = R_X86_64_NONE;
+				elf_write_rela(file->elf, rela);
+			}
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
@@ -2802,11 +2815,13 @@ int check(const char *_objname, bool orc)
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
index 84225679f96d..6f8021a5076a 100644
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
+	rela->rela.r_info = GELF_R_INFO(rela->sym->idx, rela->type);
+	rela->rela.r_addend = rela->addend;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611215812.GF4496%40worktop.programming.kicks-ass.net.

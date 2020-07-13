Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBF3WP4AKGQEM54APTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8A921E2E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 00:17:41 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id e22sf11069303pgl.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 15:17:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594678660; cv=pass;
        d=google.com; s=arc-20160816;
        b=c/wX2kywwSG4JBCEtuG2LCEy0jo0O/r9xGynpjVJ6k+8gTFMSnsrBiBCGn/XHnQpqf
         xx2jO4Gx+OebA4FViZ8CBDN64GwU/K00ewG1k8ozB2TjpOeNJAxR/vI8YBk3HJb/wB2E
         pSDKgT8CT4p3J+r4ITemaIF+qBrq0bH7fHoJAZsmu36QPEEro6LXnkPOL3CWT9TZobAF
         FHq++MSDbXd/3O1vs/c0fUm9NpjiiuY41cPCjFd4A8u+izwT+Xml2EjqXN3PPDdLEjGI
         Vou2Ie/Ml5CLgUNFB2YDwpmKTTszjMPT47/ltrHB7CjovSh5PSaS6fzjqyQyTvqKlupo
         tBXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=vgW4qMB9IPyCZeGAoVVaVZGdQETzDOq5frtWnQbWC7E=;
        b=bQwNByHI4VXKn5lr0bBUASe3enOahgUqrjwp5xQRin89e++HRnefiCNfEAE/SB4gQn
         hsmKELpdrVc9slZYzkL1Y0Zk1O4CgT4c+g+0aT3eYGiL6vdAyGHj0CJRJ5bIdnKHDK61
         /VRtyzgWKxfOXujnYiBqTpRWL7tzv29F6mHnmJ+kVMQ/sTExhkHIPH+y4VfPvTugtY/o
         NcxQsFQ3aQWUkOlJkpBy1kHjJ3qKkcO5JxPA7Z0wc6678MxkaBNhTKTvU3qWH6DKrLPy
         1tzfaRxTbbqZT2+dPBjGckJ+aaz1i4cQwjDTpZK1PRvtb9A4LcENC3cMOOosvvnBmZz5
         frAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOzwig1M;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vgW4qMB9IPyCZeGAoVVaVZGdQETzDOq5frtWnQbWC7E=;
        b=Mxk6m94gFiPuBg/I6XJ8xPlS/YN4q1sB3zUY9KcIcLT9Mu2ym4J0HDJtXJ2LfA2vjv
         V94e1CelcfX5GyxaM960akJTq2zjySHEmAoXkRvLjv+zV2+TwLabjgqNusdmtwEUCWXi
         yZkBJLP3xETBTjl91OtSqNTEkWjeZQ84FYRBPo85HY0YCwf5TFvPpWiWsIMAgmLvji3D
         LvneQAmCodu61mnRc85vjU9TD8yfKVWp6ItiioHU1Avf36QHN+BuMrpYPOCuN1wXnl0B
         BHmdpTr35UGgVlk+jyiS+Z2OVuQCx6RUbX4oiFiVUpO5hLlxr4RRmzW3WvYTsQQi/iGL
         h4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vgW4qMB9IPyCZeGAoVVaVZGdQETzDOq5frtWnQbWC7E=;
        b=gubcEkVzAWomPsHosmzlaG1gfZYKzTEPhkrnKrf0m2oedCw7/N73TfH1yxCD+y/1R9
         zRV1eN4GDvb0CFFCj5ayFs8cMOb/5XNh3oXGlXe51n+Wu53Nw0rmfBGgKN4kZCIeSObv
         UGtXMcijs79+KM9ImHJQtVubHcLQemTuecmrZEsTqYfutBMfLnXYek7Fqx2PBCLPkc22
         gPmD8CNdqIDuIr6ahxcZxNVLxBQ39Cbs3bWREeSGQU8XZxqv/A0O08EKyFtW4WYjPZSs
         F8uVyg71bjqN/V8qRd5LNGyy9nabLdISuPn8zQcNcbjMnwzxSecDa9Op36zSxGXcFLJ1
         fACQ==
X-Gm-Message-State: AOAM5301xJD8GlALP9sb0q936AWXFd/7JC2EILITYykzYNd5D4gFpGOa
	DR1ZN6EP89YME6S3kRyEw2U=
X-Google-Smtp-Source: ABdhPJztJSDF3JovVauJCacUsFjeqt3a0JzLQfBBgNwgr01YqPhdhF1dOPxpVRujzfIF7RCJa8sQdA==
X-Received: by 2002:a63:fc01:: with SMTP id j1mr1065922pgi.0.1594678660326;
        Mon, 13 Jul 2020 15:17:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls5015758pgc.1.gmail; Mon, 13 Jul
 2020 15:17:39 -0700 (PDT)
X-Received: by 2002:a63:8b42:: with SMTP id j63mr1044245pge.131.1594678659886;
        Mon, 13 Jul 2020 15:17:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594678659; cv=none;
        d=google.com; s=arc-20160816;
        b=c/h7r6EWzIkkye94S9Ha86azqqlYCXHoWHxScqkKweAMsp5NKhcx3U7nxYQ+gbBseO
         YpwSdPfRTJ4MGJN2WlK5VYnRbnP4ErniyfzZL/jSDMfkbPlT25bq7NS/htvKATlndpxi
         bZRM9ajImley5p1etmqhkKhDtYKdJgFtminJ7Nagtc8FIqbeFw2PmiyfcXrkAXo2URBJ
         FHPrMEDw662M1oluEBVLUkTxcSUxXWonuVn+7KDrFlq3m6GDtvVAkN1ic94m4tXsd9fx
         BXdtcA3tDZw7l6R7XbZCUEltyHJVwHaQeJvfytmPVww/fZsfdbDlZw7rza0vkh0UTeDr
         R6Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=8mP0/ymvYdWX4Ld0g89D/EXAhNhPehRLoxYuTMnOItM=;
        b=kKvKBXChEQhXsp3dxloaI8bhO+FzqSBzijnwLidDGkeJqDHJxnjLTYyjBkNVYRJeTa
         ePfstw1/zNhR/vOChVAvf8CGVGSPkOs2rQqU7X2qrbmLZ3g5xWxbRoHGBZLPRYeJX0QG
         9VVojM+DahaqWbCC2hB8j3/gw3wmgPNu+IBtkfsg7uVLNpG+RPV1z0zPx3dBhk3noHnX
         RZ2IOlxawDrKzwISy8Iiq049Fsx4covM/ugRO6T0sJ97fPLHYJ/fvFnZv6riuGE2bs+N
         KA6h+iuSKDR40xu/XjsvBQWKtlrWsVynsgBWrM4sAL5cb6m/VjCI8DWFJ2Njb4rrzgyx
         uJlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOzwig1M;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i6si667038pgj.5.2020.07.13.15.17.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 15:17:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id c139so13847101qkg.12
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 15:17:39 -0700 (PDT)
X-Received: by 2002:a05:620a:24cc:: with SMTP id m12mr1779104qkn.318.1594678659036;
        Mon, 13 Jul 2020 15:17:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d14sm20694364qti.41.2020.07.13.15.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 15:17:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 13 Jul 2020 18:17:36 -0400
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, ndesaulniers@google.com, manojgupta@google.com,
	sedat.dilek@gmail.com, Brian Gerst <brgerst@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
Message-ID: <20200713221736.GA1904448@rani.riverdale.lan>
References: <20200713012428.1039487-1-caij2003@gmail.com>
 <20200713213803.1274795-1-caij2003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200713213803.1274795-1-caij2003@gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eOzwig1M;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Jul 13, 2020 at 02:38:01PM -0700, Jian Cai wrote:
> Clang's integrated assembler does not allow symbols with non-absolute
> values to be reassigned. This patch allows the affected code to be
> compatible with IAS.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Brian Gerst <brgerst@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/x86/include/asm/idtentry.h | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index f3d70830bf2a..7d22684eafdf 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,			\
>  	.align 8
>  SYM_CODE_START(irq_entries_start)
>      vector=FIRST_EXTERNAL_VECTOR
> -    pos = .
>      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
> +0 :
>  	UNWIND_HINT_IRET_REGS

I know I had it this way, but I think it may be slightly safer to put
the label immediately after UNWIND_HINT_IRET_REGS instead of before,
just in case anyone adds a 0: inside that macro.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713221736.GA1904448%40rani.riverdale.lan.

Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN6NTD2AKGQEGZV7OXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CC419C861
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:54:01 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id g17sf4096719otk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585850039; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtgqVrl7qy1GDPQIyrAEA3KVGhW3EcVpZVXcMAoLqyO7ZyiUUplUfIdNoKFDAP3AMx
         W3oCoK/02x+4unmAHEGAsRmmmNwR09N05VdnDhpJdTuUHIunGc4+MPqs3PykK6iJSM9T
         vPzLV0/1AaxbLcWUu9QfVBWk1TPAUlwjeeRTzbGtDj5AjTNIRRBX0rztvlYzXjUoIKlJ
         Ra4r8XJMeMgPwogPZCvQ8+yWb0jB6qd5zYxt+fCzXj3j1GGN8K8Al1B27Q1aTyTOHnZT
         4hspkDjzV/WgTsn1QgBOA20y52BPYXeTk5VGAXp5XkgvzMfeoQencY4bcukEc4GC73MU
         IT2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uQNvQuZSxZ0K4AjOJttfwNwZp3qBVO4Vke7rp6kM3rM=;
        b=f1yxm2VTxmK0pU8gwJBDBcoNa0gasXiYxZYFWXOSHR3HXekC+s/SSjDMGtYa/99Lyu
         Y/C2/5WjhKXaNn+LSzeCJj3tP/y8K+vMFns9QnoxJCwPXhnZOP1CGV+KzklzqShsNYid
         Hajk75+xZnG0tW2U8YxhJ78qmUuj5E6Sf3dw6yuhbOA4RkALE+INlHDZ77CrVBkZu5ER
         UgUx4+uWMxyRq9v6V6GKfyjl2/B7tUs2atebLS+zF0bFb3DJV1QgZjb/Y7ro53Zyrtt3
         GitYeH4iL+/VwxLGRXMY6/nVBMKOUxR3G8HgTo/b6ZxAfHYa52eInt0Z0evuewl43Pa1
         cUUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mor93Vz4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uQNvQuZSxZ0K4AjOJttfwNwZp3qBVO4Vke7rp6kM3rM=;
        b=RbFQhUax7vbUEiAyW9R040PFpS/Hnrh6DiI1SHvobQP/pBW9V0pX3NsbUFUPkI799F
         3UUiVkerGoiJYON6UL9oZ+h3qTUwxbEJr+IU0nSanT5gWCWdv8bBJteFTN7T0x86gI6R
         o+83s92ssB0IPxGPGa8yTYVe9kP6eZwTW8USHXRB5LI3nV4Bb+MMmLDNXwdSFnOVHo1m
         MOVemAg0k6x1G8WmNFe8C+2uyHcK3f4mkSqp19SHZJFTNyE9ivXwoOT9c+O/t2KKbLPU
         5wzIXGHW2m6YNVZBWgPr/FCNGvao87Iu9nsboeMycOX1CUBJ/QpM0Qh/HeDqus/EvdfK
         2FMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uQNvQuZSxZ0K4AjOJttfwNwZp3qBVO4Vke7rp6kM3rM=;
        b=KOAv1Ok9d7GF0aYDijTaT0/lZjIphpz9pQvMpjfjArmddpymeXDYUMLNSM1ViwLrl6
         Qtfl0qZwu2udIVNqgg+Wym7ku5Rj9x452YGnUWAI+CLYf0nJSrxT2YL9WcBoQim38ZNO
         1f+ACnXBTAz7RL9BPMl4GvdEXRq0LlqR+HS3xhOxWPdUiqBEilTcBfyAA2zf2UJ7yyAg
         tSSKkPES9SvZUtK5+ktv8wC93tZ4Ocow43nzGoQnmt0/KKS+K5NJwADAlQnKK5gjRUEC
         PGnwRSHrYWvmvOS0s9jklX+xEJp1/iFOLMUj+8WFBSaEa4ZMogpakiZ3xXdLJXSnrbrV
         KoWg==
X-Gm-Message-State: AGi0PuY/CrgaIOx5BxwnqAwdgBcJHPbM6MT4QAWABUjyf6awsg24WrLL
	lO8kgavwektLPgXS70OrolQ=
X-Google-Smtp-Source: APiQypKD5D7NFhIG//FLiWs3UXNF0v90XhJqBdngF8D7y2Eo5Bu9TxYuLfr88N3VylC4LkALFqMvSw==
X-Received: by 2002:a05:6830:1dfb:: with SMTP id b27mr3177071otj.89.1585850039696;
        Thu, 02 Apr 2020 10:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls1971121otg.9.gmail; Thu, 02 Apr
 2020 10:53:59 -0700 (PDT)
X-Received: by 2002:a05:6830:1104:: with SMTP id w4mr3564788otq.54.1585850039270;
        Thu, 02 Apr 2020 10:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585850039; cv=none;
        d=google.com; s=arc-20160816;
        b=OiNOiIGWYHcKUhretpvlM8BRQnfRdbH6X/4yBP2GpccZ5Sig81n5xe3ZHWSkOzq8pr
         aORK4iUy39vF7xmWlAg2kovLP1XgpI9w++mL7hsCfu1brKMBuSOsPzXeWkQi0YEUaRSj
         ZwB+80pMitGV0zxjfp7fvfoDR8F2w60D4BL14WH4DZmOoQq2jrj9osXcYsKmWEudJER/
         r1qW0B0WASVTPiUaL5TNSD56Rf7XuiCUNFY3E2tdGRZ1nFbWJ20oUdYzwsNb2eN2tBxw
         LG4dwdgBTTmupz2TSGdIJzdhJ1pDBKEINhqZjJ2Bab6nOTk+tItWL23e0+F5yfsaqsvQ
         anUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5SMpG0rss3w3oQ6D7WN4mOS98FtPFU0Jes6zebrYWHE=;
        b=qJykqI+dTEksuxWlnREwWxz433s8RbYqLxmEPhTGLrtZmFjkZT2YUYgW55aRnQVPZS
         sj0lUiPgwWjARBoEvMxcVDVj33O7iAwc/eOiSk6mC+hmCpp49l9wX+4HsQ2w4Ke3n3f1
         L3EAzxKvKpoTduVa0WdGBl/5L06/X93Uu/O+4ImWvcip/CMorXSpHEIfP8ixVQ+LIoXR
         MFeG+SmVvcX/jlcTfdUKRPoMyJe8RjlolC9EuraOlO4QNSRhKhGLXPBjhgfl6pUrbrOc
         KRe4KXTOkCqe8DapTv+eFrRCYgNHhGcezgdEX/DmWq7fod6XepL/vUOVNiObR5KA6rJa
         D9tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mor93Vz4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e21si686416oob.1.2020.04.02.10.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id r14so2080985pfl.12
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:53:59 -0700 (PDT)
X-Received: by 2002:a63:2a97:: with SMTP id q145mr4325152pgq.22.1585850038165;
        Thu, 02 Apr 2020 10:53:58 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id q71sm4246591pfc.92.2020.04.02.10.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 10:53:57 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:53:54 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mao Han <han_mao@c-sky.com>, Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jordan Rupprecht <rupprecht@google.com>
Subject: Re: [PATCH] riscv: fix vdso build with lld
Message-ID: <20200402175354.pzhzhumlqsjk66nu@google.com>
References: <20200402085559.24865-1-ilie.halip@gmail.com>
 <CAKwvOdnasXV2Uw1r4we_46oGD_0Ybjanm7T_-9J83bdf6jeOAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnasXV2Uw1r4we_46oGD_0Ybjanm7T_-9J83bdf6jeOAg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mor93Vz4;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

The comment of `With ld -R we can then ...` should be fixed as well.

On 2020-04-02, Nick Desaulniers wrote:
>+ Jordan, Fangrui
>
>On Thu, Apr 2, 2020 at 1:56 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>>
>> When building with the LLVM linker this error occurrs:
>>     LD      arch/riscv/kernel/vdso/vdso-syms.o
>>   ld.lld: error: no input files
>>
>> This happens because the lld treats -R as an alias to -rpath, as opposed
>> to ld where -R means --just-symbols.
>>
>> Use the long option name for compatibility between the two.
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/805
>> Reported-by: Dmitry Golovin <dima@golovin.in>
>> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
>> ---
>>  arch/riscv/kernel/vdso/Makefile | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>> index 33b16f4212f7..19f7b9ea10ab 100644
>> --- a/arch/riscv/kernel/vdso/Makefile
>> +++ b/arch/riscv/kernel/vdso/Makefile
>> @@ -41,7 +41,8 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>>  $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>>         $(call if_changed,vdsold)
>>
>> -LDFLAGS_vdso-syms.o := -r -R
>> +# lld aliases -R to -rpath; use the longer option name
>
>Thanks for the patch.  Maybe the comment can be dropped? It doesn't
>make sense if there's no -R in the source file you're touching.  If
>someone cares about why `--just-symbols` is spelled out, that's what
>`git log` or vim fugitive is for.  Maybe the maintainer would be kind
>enough to just drop that line for you when merging?
>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Jordan, Fangrui, thoughts on this? Sounds like something other users
>of LLD might run into porting their codebase to LLVM's linker.

Independently, I noticed this ~2 days ago.
https://reviews.llvm.org/D76885#1952860

GNU ld parses options with getopt_long and -j is recognized as
--just-symbols ('R') because there is no other long options prefixed with -j.

Now, the following comment applies. Basically, --just-symbols/-R is an
overloaded option. It can be used as an -rpath if the argument is a directory.
The best practice is to use either -rpath or --just-symbols, never -R.

// binutils-gdb/ld/lexsup.c
	case 'R':
	  /* The GNU linker traditionally uses -R to mean to include
	     only the symbols from a file.  The Solaris linker uses -R
	     to set the path used by the runtime linker to find
	     libraries.  This is the GNU linker -rpath argument.  We
	     try to support both simultaneously by checking the file
	     named.  If it is a directory, rather than a regular file,
	     we assume -rpath was meant.  */
	  {
	    struct stat s;

	    if (stat (optarg, &s) >= 0
		&& ! S_ISDIR (s.st_mode))
	      {
		lang_add_input_file (optarg,
				     lang_input_file_is_symbols_only_enum,
				     NULL);
		break;
	      }
	  }




>$ ld.lld --help | grep \\-R
>  -R <value>              Alias for --rpath
>$ ld.bfd --help | grep \\-R
>  -R FILE, --just-symbols FILE
>
>> +LDFLAGS_vdso-syms.o := -r --just-symbols
>>  $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>>         $(call if_changed,ld)
>>
>> --
>> 2.17.1
>>
>
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402175354.pzhzhumlqsjk66nu%40google.com.

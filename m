Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHVNRGDAMGQE5SVTLRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646E3A32D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 20:14:55 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id 67-20020a2514460000b029053a9edba2a6sf602618ybu.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:14:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623348894; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEke6siQc3GnqV5RQ+C8KrZjCIiYsDLG6Vg6LtUG3cWUzIXrVKfHYkZmHbnNGetScI
         sO53HN9HyibFUtPG1gE04cGbj/CZQX2JTmi0EPBToDrKtdvBhTRnC1szd2yGzMvFtQYW
         KXMZVhFsbQ4GuzeT8xFYhdKVEwQQBYYRNwegUZ0laiPYHHMfqGv1doPZbCsA0nVI7oFv
         3RnmwHli8iV1QPvAYHr68vgEpHwY3r6FlJNP3wg9fs4nDWMkONTY/zako33Qd8y5CHHS
         ylufKsAJcW/lkV6JXmrc12aT5kLLlgN/ax2fJeCJniDpO4lxcme5fN395XXRNnQjJXqW
         yaPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tzcWb3KBVIFTv3sDsSRKxgMAkY7cISCXplZObloQN4g=;
        b=GIVSwCBtJvHEPPt/pPkyfyaGYGTQ9Ls7CVRMjKU7q3NSZHuLGrzpl2xMI+VZOF/lRd
         Ae9/hRbDmOQzHRVjwdYHT+/D6w98tQwWK+yTF4Z3ozW9hV6ldMTH9o46uIqYzlYohN8L
         LPVoGvUwI2ysAhS/Q+D4ATQjVg8dL1JCUGIrNUrk5tATyshkyA8Lxy7QlNQBIisrqsdb
         IXIPEb4X2bGi/M0pd+Qv6ISIiQ4JOmkYojwm3DXuKQqHjcB2oLOBlzHZ6kS9HXOSnH9g
         U1PxzBjn7kYgGucvWzNjwAEax98vgzJT51LzgjxEIlQYvzyJylgfkWojPe3pwtAZlJWY
         RSuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rZ+gjzX8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tzcWb3KBVIFTv3sDsSRKxgMAkY7cISCXplZObloQN4g=;
        b=aCYNl6moXXSq+Q/tBkV6QI1MHdfvNZbun8izj7ZN2QWsBAu/OTlMJt3aIRiFGLuKai
         s829xYV+WbZCAbP3c1QOct/LEwZYtrM4h+t8m+F9/f56tNKDQMdcTahVNtp6qZhPwzfd
         QZGYyFh/G1zWqaCwCTlCeApnVs6NzTRjct/b5APvS6TVWWTTu0ws36Jow3o9SpCxYcRQ
         pngwGGsC23Bhtfygc0WpFbyY2R24s5sV6Mf2Lput0+Jh97wBGSVobGKawNgLzX0FJF0h
         1Z8Do8sgK/xE1tCM/SULHyNjtgoTlKV+enEFkb3GpwTApSLyiuRv0DuoilZQcoPkdm4P
         O6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tzcWb3KBVIFTv3sDsSRKxgMAkY7cISCXplZObloQN4g=;
        b=r0kokoDRlaYdibVbJCQqrx46w56ZtPYEW9z3XY50WiBNsyM+g+AORibcZistFqZfFD
         1On46S3FHerGT5jz0DDDMR8wlpfyXXKgk2uGjia3Vh2cUxw4FvA/HM9Jonm9xSN66HQf
         8DpnK44Ew+Y5G/23fMGOBRPhIaiiKsqax+IOz4+mSw7lCa46ktCruI/qjD+EGmdJp6hm
         sWVzNv7ky9n44Fan4mzG4BEXigLTnSQVueUG9eJHfbGNEB2XZbBbQy66BqpoJUGR1boI
         EgyMiSpGI8LyPf5bCJiJLyXWplcZJJ6BNOuR7RAd1E1qTJ6yf5/SZyZiIuRU2P0uO+Af
         cKJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fNkPKRmp9pu5za1JIj1P2AArpJCoscJXoyHfhDcz98FEh1OBR
	nN4CeizhCd6UyO7lNb3YZII=
X-Google-Smtp-Source: ABdhPJxzT69m7FVVgLMP2nawcgBsg121JgoMW5bgj7fazKcGU+3yCYr2pwn/zXt2EFnFF3RpGOgfTA==
X-Received: by 2002:a25:d18d:: with SMTP id i135mr118998ybg.262.1623348894207;
        Thu, 10 Jun 2021 11:14:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:38d6:: with SMTP id f205ls4259704yba.1.gmail; Thu, 10
 Jun 2021 11:14:53 -0700 (PDT)
X-Received: by 2002:a25:cac6:: with SMTP id a189mr88280ybg.33.1623348893739;
        Thu, 10 Jun 2021 11:14:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623348893; cv=none;
        d=google.com; s=arc-20160816;
        b=kTLL3+W/igeNQxVjjpVqHPy3v7FBkbhxdsGtOQ8Y+mZvRWjA+aT838NzrD6ZRRNBsu
         53hJw8sOS9nE/KFH9+IPvn0tWqVaSanu/Ggm1Ps+Xi9FEpzXbpYzmInSwhkAAtpC+KXh
         MTfA9n8nBLu1Jnqcm/GyJOAvTzy5fiXnXg6QGgkTsxVxjC5eknOWJQgcpcYB93OVtF2v
         OF50z8YslncDk9YGqQQLfP4ksJHDeANUGgPChAiWVYZW0wnlpwxBA1pRGus4EPYGuOGg
         Mz03bkQeAwjk3mULpm8gV8aglqXhB+mJRzm3GtTor5rBU59G/eQXWN8je7G4HtfEXvGF
         dplw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ouPloUcQuNld0P0ZWy90imBdW72MiMTfihqU7gskmcA=;
        b=qmXVV++UbNX0H7fC2NiJmPS9dqNoBsP/4uscqwCGU5XMMQw3ntqmfz702IOOT5DIP8
         2MkXJR+j663aB3zHZ9sEZcUKrsqRUzbjmnFQPrfvrnm+L9b93ps9XuwlWmlpkCPPwWWb
         qz5loNd6limKFPdzgKktxuQcocbfgiXvVAY3MACXgiTZPSEtQBRrVyiNp3uT6m4S8oo0
         vqFRDD7T9FErsPlG2Ib5hcNlWqgpZ7Y4S/m1j33UUpgSmnLu/IuQzRf+jGj5IoIh45oD
         md9VjvG7PQp7HZZA3xLVGSlovsHSXpawlfpd92DEGDT64qfKQlsffuPsGG5w9WVsFGAW
         28Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rZ+gjzX8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si520509ybc.2.2021.06.10.11.14.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 11:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 417CB613F5;
	Thu, 10 Jun 2021 18:14:52 +0000 (UTC)
Date: Thu, 10 Jun 2021 11:14:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: x86@kernel.org, jpoimboe@redhat.com, jbaron@akamai.com,
	rostedt@goodmis.org, ardb@kernel.org, linux-kernel@vger.kernel.org,
	samitolvanen@google.com, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
Message-ID: <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
References: <20210506193352.719596001@infradead.org>
 <20210506194157.452881700@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210506194157.452881700@infradead.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rZ+gjzX8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Peter,

On Thu, May 06, 2021 at 09:33:53PM +0200, Peter Zijlstra wrote:
> Currently objtool has 5 hashtables and sizes them 16 or 20 bits
> depending on the --vmlinux argument.
>=20
> However, a single side doesn't really work well for the 5 tables,
> which among them, cover 3 different uses. Also, while vmlinux is
> larger, there is still a very wide difference between a defconfig and
> allyesconfig build, which again isn't optimally covered by a single
> size.
>=20
> Another aspect is the cost of elf_hash_init(), which for large tables
> dominates the runtime for small input files. It turns out that all it
> does it assign NULL, something that is required when using malloc().
> However, when we allocate memory using mmap(), we're guaranteed to get
> zero filled pages.
>=20
> Therefore, rewrite the whole thing to:
>=20
>  1) use more dynamic sized tables, depending on the input file,
>  2) avoid the need for elf_hash_init() entirely by using mmap().
>=20
> This speeds up a regular kernel build (100s to 98s for
> x86_64-defconfig), and potentially dramatically speeds up vmlinux
> processing.
>=20
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

This patch as commit 25cf0d8aa2a3 ("objtool: Rewrite hashtable sizing")
in -tip causes a massive compile time regression with allmodconfig +
ThinLTO.

At v5.13-rc1, the performance penalty is only about 23%, as measured with
hyperfine for two runs [1]:

Benchmark #1: allmodconfig
  Time (mean =C2=B1 =CF=83):     625.173 s =C2=B1  2.198 s    [User: 35120.=
895 s, System: 2176.868 s]
  Range (min =E2=80=A6 max):   623.619 s =E2=80=A6 626.727 s    2 runs

Benchmark #2: allmodconfig with ThinLTO
  Time (mean =C2=B1 =CF=83):     771.034 s =C2=B1  0.369 s    [User: 39706.=
084 s, System: 2326.166 s]
  Range (min =E2=80=A6 max):   770.773 s =E2=80=A6 771.295 s    2 runs

Summary
  'allmodconfig' ran
    1.23 =C2=B1 0.00 times faster than 'allmodconfig with ThinLTO'

However, at 25cf0d8aa2a3, it is almost 150% on a 64-core server.

Benchmark #1: allmodconfig
  Time (mean =C2=B1 =CF=83):     624.759 s =C2=B1  2.153 s    [User: 35114.=
379 s, System: 2145.456 s]
  Range (min =E2=80=A6 max):   623.237 s =E2=80=A6 626.281 s    2 runs

Benchmark #2: allmodconfig with ThinLTO
  Time (mean =C2=B1 =CF=83):     1555.377 s =C2=B1 12.806 s    [User: 40558=
.463 s, System: 2310.139 s]
  Range (min =E2=80=A6 max):   1546.321 s =E2=80=A6 1564.432 s    2 runs

Summary
  'allmodconfig' ran
    2.49 =C2=B1 0.02 times faster than 'allmodconfig with ThinLTO'

Adding Sami because I am not sure why this patch would have much of an impa=
ct
in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
question.

If I can provide any further information or help debug, please let me know.

If you are interested in reproducing this locally, you will need a
fairly recent LLVM stack (I used the stable release/12.x branch) and to
cherry-pick commit 976aac5f8829 ("kcsan: Fix debugfs initcall return
type") to fix an unrelated build failure. My script [2] can build a
self-contained toolchain fairly quickly if you cannot get one from your
package manager. A command like below will speed up the build a bit:

$ ./build-llvm.py \
    --branch "release/12.x" \
    --build-stage1-only \
    --install-stage1-only \
    --projects "clang;lld" \
    --targets X86

After adding the "install/bin" directory to PATH:

$ echo "CONFIG_GCOV_KERNEL=3Dn
CONFIG_KASAN=3Dn
CONFIG_LTO_CLANG_THIN=3Dy" >allmod.config

$ make -skj"$(nproc)" LLVM=3D1 LLVM_IAS=3D1 allmodconfig all

[1]: https://github.com/sharkdp/hyperfine
[2]: https://github.com/ClangBuiltLinux/tc-build

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YMJWmzXgSipOqXAf%40DESKTOP-1V8MEUQ.localdomain.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4V32D6QKGQEKLXDCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC5D2B6DF7
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:01:08 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id bn4sf13763629qvb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:01:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605639666; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9byJpPGTMkrX5hhdMixprWQQRnKLvp2iORyBy2ir5MRdXCVIeXycQC9bSE4Av5Nsx
         tvpdwy5rYtv3aNdvnsS51UeEUGS/giWxbVbF333oyTCttSaqBZ6XFsRotqz6uMJ5UYsO
         SQtXIa+9tml5r3NcYY3V5rvVb1hNwK2AoyaJbjwA7U9Dmbk0efhJNn8Z58wIvwDjRS4D
         yfCVK2doFa4obICLHvbIM14j9C2SP/ZuqKsK5DlOsB2OcV2W7mnX3u0xOaMZRLErvsuZ
         5VE2pnR+8YNJLua99eFavQ6qIwaRMNc62PCV8b6+lBe7eT4Y94hVkiXcmywddaTR4Pji
         HxTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5lDdSlBV89ZdQi6rW/uFwvVY1SeAJxnq/BOY2PWEo/E=;
        b=P2t+JlCpMiKp5hdtsBoqKMc3ksCJL7/M0xfbXKzXnJI9o7Q7cZgaIWeVpRzwHWndtj
         Nq8mbfrYcXU/bb1bd9nbtROoL/GtJX1RTMEqaRlvOsE0AJJfgDE0UZYu0At5ZigwNiVV
         NQ7gscJOaBKbvSvclnss3lT4gttORwnFY62X4gedZ/vtoe9AiPanQFcW4krTs5pzX/j1
         nY9i5e4a8Q6tHFyqsFpHgIteogZ6wU4rFWkw+6yZJhGSMRhe4DYomNw8rB4nk9kuYszk
         aHjzvxrs5r0OLImaTeVpoHO6SQh0WqpGU80OPZxqt6bCbh240rj2qyZa76t0MPDZXvNH
         sRiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=chs8hXLc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lDdSlBV89ZdQi6rW/uFwvVY1SeAJxnq/BOY2PWEo/E=;
        b=e44Oh5xnN7WBVhS7YVNt4M3oR0zc8aSDhzithAzYeNd4gcga7RLXKaZi+6dOJ51u2l
         k4Rkm9JwzkGRFbt7YRaWUnEX2qwh0WOCNw9SAeGwSau7DUDh+LEnppsfPLpMOZymMKkR
         V76jKGuQYkmcW0DUMePlpjceZeEz50Ov8H1rIXRgSAtY+t326QuygSKEBaqB9uXF2mi1
         bxB3i0rHQN4RHhnbVQ5/hY+T81UTbhegSHkvGDbze1aoRQFonyg9X3d1xXL9g1XIZY5t
         GpAI2RhzxA9Bq1yfUP6YwrrWg3ls/gXAtsK9n4mFBSfPizyX2oiEx/L3tOZ3A81KJpL8
         i8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lDdSlBV89ZdQi6rW/uFwvVY1SeAJxnq/BOY2PWEo/E=;
        b=pZvv1EHI3PzDH93xRnQ1eEdQaT3iF8xGWbNmqlePSB34pLP6aUkGKkcvfSHvpZgEHQ
         8IcrV6jupjOnIT4n0SlgoCMkwKiLrz7O0ffJbL/E075DAhgagAo1BFApHJLXuIp8nbJg
         8eoKonHgI0iRHndLPLSZCw2wZFjMGCQ5lPBmweuGH6piEqM+41V+jMF5egjXNQelx8W2
         FTQgbJVNazaw13jyERmUGHVZ2HzJniX6sqw7AIsuNQ3YhcrZx6wlA5pl09VGcBInl8a5
         Qh1vhrfvR/kmqw56oMxbL2ftK26splPkozpQF7Qg4oo2Fy3Z46zqxababrRxHDpCcbtS
         a1Og==
X-Gm-Message-State: AOAM531RDqijO9Tv6hHOQBjgE4PDPFTrThFWts/U206sHoy3xCTuozbp
	ER3BH9wlch9Lvxdpdi36aRg=
X-Google-Smtp-Source: ABdhPJwg4EU3ihsPKFmr7Io6fjuQx5fQrkfIhq5hLWRISoDQrIjISGPCXiXmCsSlHTiqNl6KpNGoRg==
X-Received: by 2002:a37:6688:: with SMTP id a130mr992858qkc.163.1605639666447;
        Tue, 17 Nov 2020 11:01:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78e:: with SMTP id s14ls4371593qvn.11.gmail; Tue, 17
 Nov 2020 11:01:05 -0800 (PST)
X-Received: by 2002:a05:6214:10cb:: with SMTP id r11mr739428qvs.17.1605639665864;
        Tue, 17 Nov 2020 11:01:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605639665; cv=none;
        d=google.com; s=arc-20160816;
        b=WhcyO12Y+37vPW0mXSxCsaQf55ZqE3HgQPqqOk5pKuimmLWqVJt7bWsnY3wkKP2rV8
         wicR95nx+akO3aDFlrmvfTynL5NcOVqq7+B6CqcH77BZzGJOE1Jy+X51t8TtZr5UglxE
         MwOSXko4DfUkrQqgl5MreOb1Nnde3BaCbcB3pKVUWvR/8M9QscG/UhrUkue2Wli4LV9v
         Ue43jdeQlnOh3MPjxpzwnpQZebNjE1FW+Ef5alP+kXiOZswhaF0AeUV17KgkKb/KThTE
         g7mp6htLsiA0jdDApkDLH5Af0e1oY8vOaShDB1XFQv32UXzox5DDSq9phM3yGE7AOc8N
         K4TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JYseXDP4i2Hhs9DKh0McOND6mIxwYGtf78PBSIeQhlo=;
        b=trmgrgfaTXzflAaTffD6zbW9flZw5jjAqimcj1iRtWoyeTZZXF7YPufjPkEaVFEMdn
         nK7lZFra8dVVCEpK1MsCbkW2wlsVd020VyJHOTkyuZQ2iUq3Mt0dwBfJfQ9k2RfHOgXf
         Cz4o2mRbLiqQVe+bpo07wIYHHAwfygUgsS6p0gViCGFZrhy2kwBIIYcg0TEl4BSmQlnT
         +6Drw60Voc7GFHHWkLkNpCAGKbyrPF07CzyUaRv5njms3w2mKRRDXas6ma0fmQy0zpFK
         2Cafja2lzvgh9YiMw14efcxZq7/CtIEf/0PK9+q6W2GFKuSKbfju4VVwxJXeAmZwan0Y
         MsNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=chs8hXLc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id s57si132055qts.4.2020.11.17.11.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 11:01:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id r6so969286pjd.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 11:01:05 -0800 (PST)
X-Received: by 2002:a17:90a:d250:: with SMTP id o16mr449165pjw.25.1605639664820;
 Tue, 17 Nov 2020 11:01:04 -0800 (PST)
MIME-Version: 1.0
References: <20201117013951.7827-1-rdunlap@infradead.org>
In-Reply-To: <20201117013951.7827-1-rdunlap@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 11:00:54 -0800
Message-ID: <CAKwvOdmESwnF14TLjRfzJg8Dau8XW0LgoDvXtdPjPOqdf211SQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Andreas Schwab <schwab@linux-m68k.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=chs8hXLc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 16, 2020 at 5:40 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> riscv's <vdso/processor.h> uses barrier() so it should
> #include <asm/barrier.h> to prevent build errors.
>
> Fixes this build error:
>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
> In file included from ./include/vdso/processor.h:10,
>                  from ./arch/riscv/include/asm/processor.h:11,
>                  from ./include/linux/prefetch.h:15,
>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>    14 |  barrier();
>
> This happens with a total of 5 networking drivers -- they all use
> <linux/prefetch.h>.
>
> rv64 allmodconfig now builds cleanly after this patch.
>
> Fixes fallout from:
> 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>
> Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")

Hi Randy,
Thanks for the patch, it looks good to me.  I only had a question on
the commit message.

Is this also related to:
commit 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")

I plan to backport 3347acc6fcd4, so it would be good if all of the
follow ups are all tagged accordingly with fixes tags, so that I don't
break anything backporting 3347acc6fcd4 because I forgot or missed any
follow ups that also needed to be backported.

> Reported-by: Andreas Schwab <schwab@linux-m68k.org>
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Arvind Sankar <nivedita@alum.mit.edu>
> Cc: linux-riscv@lists.infradead.org
> Cc: clang-built-linux@googlegroups.com
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> ---
>  arch/riscv/include/asm/vdso/processor.h |    2 ++
>  1 file changed, 2 insertions(+)
>
> --- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
> +++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
> @@ -4,6 +4,8 @@
>
>  #ifndef __ASSEMBLY__
>
> +#include <asm/barrier.h>
> +
>  static inline void cpu_relax(void)
>  {
>  #ifdef __riscv_muldiv



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmESwnF14TLjRfzJg8Dau8XW0LgoDvXtdPjPOqdf211SQ%40mail.gmail.com.

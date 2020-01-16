Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEOIQPYQKGQEWKU5VLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2B413FC34
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:30:42 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id b1sf5737915ybk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:30:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579213841; cv=pass;
        d=google.com; s=arc-20160816;
        b=xGYKUzAzFIY9kDredTuGbBsxlPsLHiXavuK1qpWqbbWJlnNV5+RRo5lpED83k9OrmA
         LpOVkgmVtdCn/CrlXDIFbPv2/P8q9HDDx5yBKa38lFo2/i2m05eevXAw2DbT87BfKR4J
         lsb1aOXvbgF4vaBZ4TTJSpqR7OmPeUDZvXn75pfn6fhz5L7qHtSI9XhIFBgEf4QCJ2fV
         OrsdgK9GhO37qOYByNI3q8tvFPj/Lswsp+N7OZVNfvSIvELXp2PZTricExXAzYJn8ZDt
         Md/RKvvwHrNlsnXTlARicjlEpVEv9WgbugVsNtuqMqOnKw7tRkBeX2rc1zqr61TroDvP
         hIfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5U2XnP4jTqi+BhHz0ByqOIYuF4J0ydnpeWQPTPFxIS0=;
        b=YO+2h4IBM98b134KcA5kNdfcQtDVYW6OHTrRAEgwwKCKV7g655oIYWhj958NY5NkPI
         eikM+amaha0n4bRHVrFCRtjktc0afan0ogqZ5Jbsdh2BlLfxP/pnZJDtViwlI7kB/qAv
         xWcXK5tuz2Zb7w4mKpFGoQ7nYmz+iAaaeeZo62YVBRUmrTOuRQKX0y72uqW4ap2t3+jP
         liE7eEgNTvSloIoX44s/7jT3VBMWv1e009qY1jkcijWNYp1ogK6h6IUpengBJukgqSeR
         Ej9/jCagEmeZZmYXYDq17Yp+nDlMn6Bv89Lsom+ymtKV5ZyegwVBek/lIg3lWx4W5BlW
         AU5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oqbV1Tp+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5U2XnP4jTqi+BhHz0ByqOIYuF4J0ydnpeWQPTPFxIS0=;
        b=NjfzEStn3UOvzom8sXCSaMgXp+/0HOU4GVUKqQ5+wP11bCHwqBIdRHd9EIS6kaFCtK
         Gqy2TkMvDaCAjeX+4WcmOTLTkFg2oO0bLcDF3mpGNzOVeMVg9OnRBtE1EDOjPXTnWAPN
         yOWRQbC9oZSAOxt3w4YVgOyYmbg9PuiZYFlp7RZwAkrJQhJ0W2hpqCkvoenDXhQEXqOv
         ocXCN2+jj1AgwaTCJs18l3jLNxxRYLosd9BryCsMEwh3uiYJ+yiAqMBwopTBtPIY7HTt
         Ev9nzoU528Uxuj02MPScCW8BCyhrvufzc7EMQUrah5K6w5khgNFa10UAmImiWsTrUDYR
         eDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5U2XnP4jTqi+BhHz0ByqOIYuF4J0ydnpeWQPTPFxIS0=;
        b=faWqclW+PU10FVPkKDqlDPtr6ZyGgpSN06FbuSt/QE+vscckQ9vlrouSN4n6uZx2vH
         dJ+YVjmlItoVkR97e7UkGbtxedd8rELUgfLMLroJWx0hIcVwcNDKM1kaYWIBEV4UQu1C
         z1IgDq5ZrUI431iNrxprQInXQLTVkOt9cb7qJNHnvEkmMfBDOSC58BeuadjAyvsBrgsj
         gUn7VaXA/tJidhONRVZl8mZ0bI7muuorSjLh3//wrg0I4r//vtj2QjC7M4wRsv+R1M7V
         p1DIqYGSNFSEwAgl2S8pGS+v+iv5GALmQiGjmeVShg1k8C5L9fhSdvrGCzf8NT/+gzxu
         dHdA==
X-Gm-Message-State: APjAAAV0ayXJo3YGh6XZP7NNRnAJ87YsRhaaTiZDboucMSjzS7yZ5DqO
	+JXjlhpDT48xV5jzbJmKuZM=
X-Google-Smtp-Source: APXvYqyIJ1s985iV5yTTJEJbRNiEDY3rpGlXFuju3+tJq3qVhzlhC6vtqhbHJV198m7UCBlnPxMVNA==
X-Received: by 2002:a81:3c90:: with SMTP id j138mr25186687ywa.319.1579213841156;
        Thu, 16 Jan 2020 14:30:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls3817300ywe.2.gmail; Thu, 16 Jan
 2020 14:30:40 -0800 (PST)
X-Received: by 2002:a81:6656:: with SMTP id a83mr29122793ywc.508.1579213840811;
        Thu, 16 Jan 2020 14:30:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213840; cv=none;
        d=google.com; s=arc-20160816;
        b=b8djT+99Uj7Xfl0rNCUisoDkcD4zyjFViXJufDJ9Kc1tFhoQADarfor5ct7U3hKkL3
         yOwVlz34afV6ptAfI7i+5WXjeRfSpIfACOeE3BcmQ5XqnYTgxLtMFYg7+UveXQrDyz0J
         VqhwAfEiXlHq8xqlgF+oh/pxiwWFb83PrLVpSdY/AQDqfaJ2/Bl7ak9Ye6wXKbMU2w37
         KVoXg0rRJ08GKI0/3b+KkmL+iJER6XEV1JijMGZXh4hUI15SR4nbApIQjbEMahqfqper
         TDn0gSVURPE55ZVk0kmdWm/uw0LSb4LG1kq8Ily1s01pi2s/DCYB2yGVNmKkO90G+CEI
         Fuog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ODGLZwrFLfLtDSf4qIslNTvdWFOn6TwOdB2Jam0+bjY=;
        b=Z2iYXU+yZC5chW6VN0bOiWdip3cHzabYIQXmS27HsXYNv4stbDk/lovZ4qtsIggH5c
         1dOV5lNnUCom/s03T21c3tiSuGjP1JYmL2cwsHb/eMdiaGgaynIfEx/8MVfa4Aj52RnA
         mUGuHg6QPoZT0/+ZRWSrSdcS+Z4ALgn/3Iezf6GJfI3gJeuvlr95s2pIguG6uDRwM9lX
         2fTaaBfXMFWJGvK0kVG+M5gvYc5yqEfuE/+glu41JZWvhwOZRH/uuBsWh6VBBquAMKrr
         fqzQJvZ4F5B5uckt8VcXCk1B08ulwvl2rUpCANOElIkpHNbs/eeiA45iCUrRo0prpLW6
         6sFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oqbV1Tp+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s131si563546ybc.0.2020.01.16.14.30.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:30:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x6so10935295pfo.10
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:30:40 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr41091369pgk.381.1579213839722;
 Thu, 16 Jan 2020 14:30:39 -0800 (PST)
MIME-Version: 1.0
References: <20200115115249.27774-1-ilie.halip@gmail.com>
In-Reply-To: <20200115115249.27774-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 14:30:28 -0800
Message-ID: <CAKwvOdkdD9VF1k==G4vMeo4bBLarYz8gPvWfv6+N2kejeoXfjA@mail.gmail.com>
Subject: Re: [RFC PATCH] lib: move memcat_p.o to obj-y
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oqbV1Tp+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Jan 15, 2020 at 3:53 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> The semantics of `--undefined` differ between ld.bfd and ld.lld:
>     $ echo | gcc -x c -c - -o a.o
>     $ echo "EXTERN(test)" > a.lds
>     $ ld.bfd a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
>     0000000000000000         *UND*      0000000000000000 test
>     $ ld.lld a.o -t a.lds -o - 2>/dev/null && objdump -t | grep test
>     $
>
> When building with CONFIG_STM=m, there are no in-kernel users of memcat_p()
> and ld.lld discards this symbol because it's linked in via --no-whole-archive.
> It's marked as undefined by a linker script but ld.lld discards it anyway (as
> seen in the above snippet).
>
> Work around the ld.lld behavior by moving the object file to obj-y.
>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/515

Thanks for the patch.  This solves the observed linkage failure.
Maybe Masahiro has more input based on the discussion in the above
Link?
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  lib/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/lib/Makefile b/lib/Makefile
> index 93217d44237f..eac343b81f77 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -30,7 +30,7 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
>          flex_proportions.o ratelimit.o show_mem.o \
>          is_single_threaded.o plist.o decompress.o kobject_uevent.o \
>          earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
> -        nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
> +        nmi_backtrace.o nodemask.o win_minmax.o
>
>  lib-$(CONFIG_PRINTK) += dump_stack.o
>  lib-$(CONFIG_MMU) += ioremap.o
> @@ -45,7 +45,7 @@ obj-y += bcd.o sort.o parser.o debug_locks.o random32.o \
>          bsearch.o find_bit.o llist.o memweight.o kfifo.o \
>          percpu-refcount.o rhashtable.o \
>          once.o refcount.o usercopy.o errseq.o bucket_locks.o \
> -        generic-radix-tree.o
> +        generic-radix-tree.o memcat_p.o
>  obj-$(CONFIG_STRING_SELFTEST) += test_string.o
>  obj-y += string_helpers.o
>  obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o
>
> base-commit: ee02f9544ebd8d38900dfe955710897b99483686
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200115115249.27774-1-ilie.halip%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdD9VF1k%3D%3DG4vMeo4bBLarYz8gPvWfv6%2BN2kejeoXfjA%40mail.gmail.com.

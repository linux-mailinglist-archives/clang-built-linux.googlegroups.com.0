Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUVKS3VQKGQEU7CBCJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C2B9F448
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:40:51 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id f188sf231149vkh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938450; cv=pass;
        d=google.com; s=arc-20160816;
        b=GHOmhfQhcD4pkptxUOr4dc75bzyxRlBQsi2SyExm9HANj8UpN3NXpV999nygLc0Mfi
         qrmWcp70pKDn2azy+Ke6JtXzuJSBP+PSf0XW9IBpSwZcMgCKuoRw8fG/hupKdnRIBpS6
         b48JC+7r+1rKctwEBSIUxoA7XMoTOSZFHRkA2fTk+GpHL/c4A83dXGATbaA+gyd6cfGI
         1qefwhgZJPlplWUrkpKgM2W+WZLcal3PFRwYf52og3KhE+XAgoPr99OOF7EwXm7F4DyJ
         Cnp0aVjyvQDnQV76ZnPFbJI0a6dMbWvO2TBNmRn/f7UoDg45m5LkrIhwaVjHM2bIzaWS
         76QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8XlCHm5zZWXn0stXIKiIJvLyEe0/EbNR0F3ycXmMklk=;
        b=YmHSF274T4uVUrLMvPEThsfNOUYHRTS5IHGIncfKl5wcdHW+Sf9r21zpWY2RVGFg0/
         9JWgKqOsldgBTHY5QKXYddOmvSD8mzsKchQ4q4GeCEl+qolOgblmnv8jqT+9PNsXtk3M
         wnyPntnYMWHRfOLStS1Nj/JuD5IcljrkdLkdEMuVHENLuMiTjGglc1/5MdroblDFe46T
         XrgmNDG9EBd8yck9DnzkBXgwFcxtLsze39ud0qfEWfEJy/gS+UfIBSGHr65hhbQHR+r3
         YpTwy1EIbw8XqCgErxZ53DSMEVnZYiVsiKujPxRWjxsLjf3E4JqvFK+c7DhxAw5HjfGq
         xZrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iD5Ox0Uj;
       spf=pass (google.com: domain of 3uzvlxqwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3UZVlXQwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XlCHm5zZWXn0stXIKiIJvLyEe0/EbNR0F3ycXmMklk=;
        b=lhzBQRjUGkregJNmkVCXDb8/SrTrH5NgyAQMmHu6O/DAQSdy+VsLTFKKizB7ynYeiH
         fCXSofsRtBQ6rpUlNQqT2V/6u8B71eoMjKRmUUPsBCfuQDgHZ76WqhqEd750JelvZ/Az
         8X/OF7HhMXL9AmuxWn7NPDlOpqtIk6vWNDpaHY4F9Iw/1uvHXz2SnMC7fBKlym4g6AqS
         g1UAZbz1BiyR9JAdg8UvZYoLKUJyA3pP5zx+VnLzcoZ2qW5KfMf2L71nrczNtPCVfmn7
         uSddIoafW5wKAwMvuaxVm2oY8AUZcjCMwWuRQfu7UYb24lHY7IR3v6MsyhZDy/9rf7Qd
         OxuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XlCHm5zZWXn0stXIKiIJvLyEe0/EbNR0F3ycXmMklk=;
        b=NtPW3ZM/26OOuGnYVMDVjFrZHQpwvrqmjmttQ92jx9JNkFQrzND/hiEzUzEelAYVK6
         3zMUFpRe2RjCXpC99aiUAs0oL7/CxXyXkB328p4hYDIpfTsxXDth7yxhiejkB0XnIKLv
         Ron8vGcbwYrMS+5CGZdIgQVzCjBRhxTJ+gRLi/UGtHEVOhL2w9dTUNjrfa7bmwuZFYW9
         myMCEVImWXZbWUqCWUZr04sDyo1f2U4NAlLfsTtSgNBPXOZzo1qoPIE5sZCjMGtOOdR6
         YLmXB1eBf5DWhDgaB/d5mJNXp+cuXUjReIDr8oilY3KQle1naPwUz9UHY29+/VmwkqB4
         smEw==
X-Gm-Message-State: APjAAAXDpB57epyDqjdd79JfyglYMPZpukDyosc26cgk9vLHq7WEMXct
	XlICN2l+tWpGpFh8iJeXrgs=
X-Google-Smtp-Source: APXvYqy+yTldGvMQqgG08ranPchp6Z62K7GTmAkkbEMUuFgm1X8z0EDX1KCEz1WR7LtPhOAvkNcfqQ==
X-Received: by 2002:ab0:48a6:: with SMTP id x35mr126026uac.24.1566938450737;
        Tue, 27 Aug 2019 13:40:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:218d:: with SMTP id 13ls11228uac.13.gmail; Tue, 27 Aug
 2019 13:40:50 -0700 (PDT)
X-Received: by 2002:ab0:30ed:: with SMTP id d13mr110892uam.13.1566938450460;
        Tue, 27 Aug 2019 13:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938450; cv=none;
        d=google.com; s=arc-20160816;
        b=r0j2dEm6VsGp/JpXLurQ4/4mguO2+Zodl+4IeHUtGi4sgVa40WPdJgWeKhkC73WHry
         R2QFKdOjoMXCuv/wYR4D5ii2ZxHsA9POrjNeRB8pD1iapCsAYf01USt8EBjnFL3094rR
         H03p79G46EARqZGvFtIBLkLdvDRF0SU9rXKFGDPdwewVg1XNZ+YDiuzmewR48NvthHJM
         lxjtIv1QSp1hUPKKvZ+/XGJWMu/rWzOioLIrHyTcDBi2kYnf/qHgdebiKfWa3EuzO2o3
         vGQz4b/aOswfxM/9hTyjm/dymd//vm+OSEQeuRhTPpIdED+qBhQszPnWYIqPhz83BTZL
         bcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jdT1qqSDs2qFZzLVnvA8tbfOhFVP3FSFASOlvOrlNi4=;
        b=r2qEhnivFxEs4K9vgmJOIscoEObuI1p6BSQOKfxd5PvHVfCFgtjrGHsFOwSu9KQMFY
         dmAjygzWJ6EwZ4bNBQbpGeEjiWUJSoqS9g3XNxcZbtr+n0AR1zW9iNSVFfsGwuuL3gF6
         /0HKUUxJXGxRpup51yQ0gYXoZ7wiPkbH+1xNwhPS7U6iSnQC7J+i+SIowVWejBPqmisV
         JM4dJmMsdLjlyxUlLqXWJ19qfRhLgUyjUmTrUCE4gqPqgBaN+52NrabNOAVQjbiPCl4K
         sstQeA8jHj6UG+gefsJFlZy/wLsdGC1GCEwH/5xl/CcPwD9ok6DEmzRvG53CThbIYZP8
         pMxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iD5Ox0Uj;
       spf=pass (google.com: domain of 3uzvlxqwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3UZVlXQwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id 129si16827vso.2.2019.08.27.13.40.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uzvlxqwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id h18so140869qto.18
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:40:50 -0700 (PDT)
X-Received: by 2002:a05:6214:18a:: with SMTP id q10mr410277qvr.157.1566938449923;
 Tue, 27 Aug 2019 13:40:49 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:01 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-9-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 08/14] sparc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iD5Ox0Uj;       spf=pass
 (google.com: domain of 3uzvlxqwkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3UZVlXQwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Acked-by: David S. Miller <davem@davemloft.net>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/sparc/include/asm/cache.h | 2 +-
 arch/sparc/kernel/btext.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sparc/include/asm/cache.h b/arch/sparc/include/asm/cache.h
index dcfd58118c11..9a9effdd01e2 100644
--- a/arch/sparc/include/asm/cache.h
+++ b/arch/sparc/include/asm/cache.h
@@ -21,6 +21,6 @@
 
 #define SMP_CACHE_BYTES (1 << SMP_CACHE_BYTES_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* !(_SPARC_CACHE_H) */
diff --git a/arch/sparc/kernel/btext.c b/arch/sparc/kernel/btext.c
index 5869773f3dc4..b2eff8f8f27b 100644
--- a/arch/sparc/kernel/btext.c
+++ b/arch/sparc/kernel/btext.c
@@ -24,7 +24,7 @@ static void draw_byte_32(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_16(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_8(unsigned char *bits, unsigned int *base, int rb);
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-9-ndesaulniers%40google.com.

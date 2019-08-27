Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBX6ESTVQKGQELGCLN4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0CD9E7EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:30:25 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id k191sf14876272ywe.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 05:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566909024; cv=pass;
        d=google.com; s=arc-20160816;
        b=o05lyIbDk2HJ3Q/IMe12X6Q9uW0d0s6GhWRntnDCD6N8iPg7G6YF6ptEJdr5EiXrke
         UIBwJlgTixPxjOI2AF6ORXQLn/4XA4436gwvXPtuZYLBPKWtiZa3ODmsRz9a/1Hj62+N
         yBGcQfsYzDUeUMOHBpGPt6VBn7koFes2eJ/PpS5zhrh86bHocbCtnwGtSHXyyUjMSLZz
         oKRgWnUVNQgpfkBov0CZveDkesS1cfSSeCiJjHTeKlK5S2s8lbvHUgaoNHS4QsujkKmj
         ior7PYIwF6poHd6Gh5tsbkttLMkgXvx6GOtDVybtko0tjTQOrqDQvE4PtElJ9UlxOkMX
         u6Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=ZoZ+NxsDKsdryp3aLzWC92MZ5KMIKT60QTyzMi7Bnvg=;
        b=MgvGmmrPrOLKrpFDKGdkiHI9GdjtSSAM1eCUZcVc8JAJ4xOEnjIFu3VXFtcvjj/upj
         Y0abMlW8o26y3Ukjexh1KKe2U03kv4uNX/ytcohYnEVFe9GV0IDHS94s4reDQZMOmBKh
         tXMtZGa+u/0a/vbHW60YI0B0MxVhug1EzUJFS4GmYJbqClkwkP7GKUa34lnvcjbuHtOK
         TtRVggtjKOEof1fi9dGokabFIv6lLTcPZPFDl/xaZaVHNQAi2orMZeCb3VJcMZmYNONP
         Odw16fVLoIUYh05sdpgVmqaYw2ucWug13X9xp0jBKUU24NVOXbKLtDGfbT7TlgwCqpPi
         yFwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZoZ+NxsDKsdryp3aLzWC92MZ5KMIKT60QTyzMi7Bnvg=;
        b=LGtTsKruT0bmOlqfZHJdhI3Skxuu+tHTIsNflD+9bzqTIDlmc/pqEE+PvO6YsQxcdC
         fYmYusyy5wpiK1uE4jFqDVDZVprUCVv0BH5EJDP0FTsfENe6xSJ2scClg+dvVu2go56W
         HmpiOL09sFwRV7Vrw38lqzaRSO3hT2LFXP8RcCBV4EgdwfAjLO/dzCa3KRClpphHxHN0
         VUNYdRHqH/VUw7jvEUJ4pxfPQOZ0pVGeHUnHuh7QMmf2jq7O/4ofT4q+0s4yJ2vKZDd7
         tRZ8dXNsZweu6QyYa7VbwRWfK5z6949fzPM1pL3pIGq+/G5d5jdyPomHcU55WqhXjCQw
         lz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZoZ+NxsDKsdryp3aLzWC92MZ5KMIKT60QTyzMi7Bnvg=;
        b=XTjtj4rM0EkovRlWbbkSwg48zjCqnOowLSsftrpEOuDSTyPRP4Kys/RX6snP2OzTle
         Ky/zVcSYJ6QhJ83xXEONQAmxUMjuhjyrOCg6oAFXpO2eUk5uoO3ZL0C7k6gy2CUlynJe
         /aiWARrRCsot4vdqhb+Y8qEAZQgvpX+Ov8i+KeDoJ+ZvvkXfnSgCM5s/aejra9MXJNNG
         zAGS0zjAKTyh1kJN7lc95B9AJ0OTUeIOA0GF59zuWvWyb8Q0U8/26WawUPK/teSBi0Tg
         igCBSaMfdHaN+j8M55RutobgUo7BkDV88QMsjDRi9uKi7WrjrRQ/u/WdK8GO6qX+LFsg
         QGCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVyhFttIF+3YrZPJek6cqy9kFtVIzrMJInewzYlmiVhgQQFPen
	b1IXKCWP/B1f69Z98Cm12y8=
X-Google-Smtp-Source: APXvYqwkZD1c/XZvDtVR5twm69Wxj9TkNcZkJSoVqT+RrMb2dFGRRsrLxpwKgbT8T9nJESvpAlpKzg==
X-Received: by 2002:a25:81d1:: with SMTP id n17mr15929400ybm.157.1566909024043;
        Tue, 27 Aug 2019 05:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:38d5:: with SMTP id f204ls4877848ywa.8.gmail; Tue, 27
 Aug 2019 05:30:23 -0700 (PDT)
X-Received: by 2002:a81:4c89:: with SMTP id z131mr17130996ywa.294.1566909023695;
        Tue, 27 Aug 2019 05:30:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566909023; cv=none;
        d=google.com; s=arc-20160816;
        b=Po0nknMBBzL+2hTDVGQ007tYziownhFnmHiWiuRUQlHq6hLz1smPrWj7C7yfGG1Xpd
         3j6O9roLnHEqDtrk/+8ydlOjyOJaF8wKmG9XF9zjWe0jq3a+kdBHivxPMh6L6BZNiUk3
         Hg84n4lwuTSf8DWF0NbQIzRW74A0ry1aMzMjxw/NX2wcBr4zFy4wM/XqWHUwrWl3yCDq
         237bDUMeKoM/VoZEhk9dnlP9ExS5W0CXxfJDIYng5MY7Bzf90Vdiabe4RewjAP+6KKuq
         XNd8n2btumEA+zjas26Qj8Zf194Y6Xi57K8BAYK8ppuoFX8aI5sh1VUdL+njeRymPEmH
         f24g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version;
        bh=o/st+xfPrEf5neMYSfQiCblpDGrPvpIPRZXQLxNBf/U=;
        b=KMvPGeeEJgFsCxymXai+g/dqHp4w1BMG+vFgWvVUuHn326o/I27NO2OBPUTCJLU9R0
         +1t12uHNCh18MqQMhwSiJW9X3k4PiZs575Tv44fxFU8WwZ0v6ViT6xwBgp1k13jBUpGJ
         Bbglx1U0xYO9lnzZWEqAk4QnRFzrzS+xIHndEV0o1G7nj+I+Go73nsAf9wSUTFLIb7jt
         NChMG003+VwfeIrNdRMl2oNrj7NlK/KNsiIEaekUaum5dD/ewRbpXPo68OUwQ60WaBsd
         Ke2jLgDR/6NhPsIbdJmgasJxjtSJtcSxcMsEs+8yzGxiFvqCBgc3YFWSQzeN18lvaLvZ
         cjQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id p188si807900ywd.1.2019.08.27.05.30.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 05:30:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id t12so21050546qtp.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 05:30:23 -0700 (PDT)
X-Received: by 2002:ac8:2955:: with SMTP id z21mr22350616qtz.204.1566909023051;
 Tue, 27 Aug 2019 05:30:23 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 14:30:06 +0200
Message-ID: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
Subject: objtool warning "uses BP as a scratch register" with clang-9
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

I upgraded to the latest clang-9 snapshot from http://apt.llvm.org/ today.
Many problems are fixed, but I still get tons of warnings like

arch/x86/kernel/cpu/mtrr/generic.o: warning: objtool:
mtrr_type_lookup_variable uses BP as a scratch register
arch/x86/kernel/process.o: warning: objtool: get_tsc_mode()+0x21: call
without frame pointer save/setup
arch/x86/kernel/early_printk.o: warning: objtool: early_vga_write uses
BP as a scratch register
arch/x86/kernel/sysfb_simplefb.o: warning: objtool: parse_mode uses BP
as a scratch register
arch/x86/kernel/head64.o: warning: objtool: __startup_64 uses BP as a
scratch register
kernel/time/timeconv.o: warning: objtool: time64_to_tm uses BP as a
scratch register
kernel/trace/ring_buffer.o: warning: objtool:
ring_buffer_discard_commit uses BP as a scratch register
...

I created a reduced test case:

$ cat crc32.i
typedef unsigned u32;
long a, c;
u32 b, f;
u32 *d, *e;
void fn1() {
  u32 *g = &f, *h = e, *i = d;
  for (; a < c; a++)
    b = i[b >> 8 & 255] ^ h[b] ^ g[5];
}
$ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
crc32.o: warning: objtool: fn1 uses BP as a scratch register
$ objdump -d crc32.o
0000000000000000 <fn1>:
   0: 55                    push   %rbp
   1: 53                    push   %rbx
   2: 4c 8b 05 00 00 00 00 mov    0x0(%rip),%r8        # 9 <fn1+0x9>
   9: 48 8b 05 00 00 00 00 mov    0x0(%rip),%rax        # 10 <fn1+0x10>
  10: 4c 39 c0              cmp    %r8,%rax
  13: 7e 7f                jle    94 <fn1+0x94>
  15: 48 8b 0d 00 00 00 00 mov    0x0(%rip),%rcx        # 1c <fn1+0x1c>
  1c: 48 8b 15 00 00 00 00 mov    0x0(%rip),%rdx        # 23 <fn1+0x23>
  23: 8b 1d 00 00 00 00    mov    0x0(%rip),%ebx        # 29 <fn1+0x29>
  29: 8b 35 00 00 00 00    mov    0x0(%rip),%esi        # 2f <fn1+0x2f>
  2f: 89 c7                mov    %eax,%edi
  31: 44 29 c7              sub    %r8d,%edi
  34: 40 f6 c7 01          test   $0x1,%dil
  38: 75 05                jne    3f <fn1+0x3f>
  3a: 4c 89 c7              mov    %r8,%rdi
  3d: eb 15                jmp    54 <fn1+0x54>
  3f: 0f b6 ff              movzbl %bh,%edi
  42: 8b 1c 99              mov    (%rcx,%rbx,4),%ebx
  45: 33 1c ba              xor    (%rdx,%rdi,4),%ebx
  48: 31 f3                xor    %esi,%ebx
  4a: 89 1d 00 00 00 00    mov    %ebx,0x0(%rip)        # 50 <fn1+0x50>
  50: 49 8d 78 01          lea    0x1(%r8),%rdi
  54: 49 83 c0 01          add    $0x1,%r8
  58: 4c 39 c0              cmp    %r8,%rax
  5b: 74 30                je     8d <fn1+0x8d>
  5d: 0f 1f 00              nopl   (%rax)
  60: 0f b6 ef              movzbl %bh,%ebp
  63: 89 db                mov    %ebx,%ebx
  65: 8b 1c 99              mov    (%rcx,%rbx,4),%ebx
  68: 33 1c aa              xor    (%rdx,%rbp,4),%ebx
  6b: 31 f3                xor    %esi,%ebx
  6d: 89 1d 00 00 00 00    mov    %ebx,0x0(%rip)        # 73 <fn1+0x73>
  73: 0f b6 ef              movzbl %bh,%ebp
  76: 8b 1c 99              mov    (%rcx,%rbx,4),%ebx
  79: 33 1c aa              xor    (%rdx,%rbp,4),%ebx
  7c: 31 f3                xor    %esi,%ebx
  7e: 89 1d 00 00 00 00    mov    %ebx,0x0(%rip)        # 84 <fn1+0x84>
  84: 48 83 c7 02          add    $0x2,%rdi
  88: 48 39 c7              cmp    %rax,%rdi
  8b: 7c d3                jl     60 <fn1+0x60>
  8d: 48 89 3d 00 00 00 00 mov    %rdi,0x0(%rip)        # 94 <fn1+0x94>
  94: 5b                    pop    %rbx
  95: 5d                    pop    %rbp
  96: c3                    retq

This happens with clang-9 and clang-10 at the moment, but not clang-8.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3G%3DGCpLtNztuoLR4BuugAB%3Dzpa_Jrz5BSft6Yj-nok1g%40mail.gmail.com.

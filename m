Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBZVNULUQKGQEOJNNUAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B84F36713C
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 16:19:20 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id x20sf7794255ywg.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 07:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562941159; cv=pass;
        d=google.com; s=arc-20160816;
        b=zUh3zK7gkYRv1wH/7yys4W0qhKajO7rANY0/H9uu5hIp19N5jfuVuBVdG0PEeVjVEk
         aFOx59XiRvM6fZBK45huJhO5Mj2mBXibs/Kz6zLt+lemypDcb8j83L3nlSu8ZWu6HKsP
         P4vM3Yydk6HYtYurQ72TXQxbG+s33DxYLxu7h92mV+1N8Wq4uHfMZYW1uNJ8ZWaLg7sp
         52sktx1o090fY7YUHRJ2uWd2XXjsn4RaLi0TtLoAObZeFU5K6qgC4ssiwc1KsJcXOmnL
         054KatUzCrUIgn8XhoWubkKt5kLgQSBnPAovC+tloRbfMxzIdBnwflN74zwn1OxN1tNt
         YvSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cDKFpndamqWRl3tRGVStkCjwZ8Hb/oQorOXhL6XB7zc=;
        b=Pdw4aznZ49DDAw0BlxdVXFf1baSXad4QpX9m6dXTSM9HtOln3moooVS2fSpq4Ckfo0
         IuTFiDLH7Ejttyg4OdekP3jWsOG/9k6sthhv0/apZ/qWCDzN1kQjjOnHMTwgqmWhl0ga
         Aw+jWkN2fcHrVgTgz1eDSz/gGGu3FusyuOU3vasweMz4dqdPAFGHX/CpWLUzzgJwACRh
         MKgOHnJoTRJSwUJaMx6M8/qWyjy5N0GUQcGk33A7YsXEsAv7Kg+hqAo4bLqcOpSsoGpj
         3jRqSBj6R7VLqjr56mlQCHhzhPgMPAkm1R/fti56zHLFco1YWJwP9IRidXC0XObqlVHA
         ZgbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDKFpndamqWRl3tRGVStkCjwZ8Hb/oQorOXhL6XB7zc=;
        b=Wywkh0i4SYlLW2VlSAJLAXws7B7B/a2Mb0nWTb/qRBoCDeXfb/cFASDUDtafumD544
         jpyXboRzBdWyb4sUxOBL1mwE7DEsOER46RwnPzRuo81JRyvR9YHYG9vK5tAzEP285dAq
         PzTHGGnM8TclTiE/WKkUVKcUF5Ejzsu2CFUF4kjZQpbcpzxm5ZvZ/2zBS1ug4YHkWmVD
         o8MndO6Z+gUlrvxZ3J+0F3QcqLA7d1Rg4pIw57S4RgXPq7iUtiTosMl6jHD7amcgcf3Y
         c16VZ4FQw84+j/umtoJNcZOe/YoRJhwggFLKJRDkAWZSyI2eIYIH1YN4O9V8MMZ+unoB
         HWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDKFpndamqWRl3tRGVStkCjwZ8Hb/oQorOXhL6XB7zc=;
        b=iEST7XKhn99eo3wtbOK56dYs4u01TB8iXTDgguJRPEONFgnTHXvpaoiptPc1YOS1R7
         fLa/msI2phIzg/W0d8BkvTtjqVezLpBQQ7m39r/GVEDUlrYjFOQWTqxGOpd/BJdQiv8Q
         ZZBUMyWc8C4Hv3Gj27CwFGrpM8IWHu1Qga3PdnbVIt6h1LPVXD0d1MU68dHEEb6P2Gq+
         t5f3G/X3g6UL+CMzSmLmysuGKFrZ8SpIB6xmSzHCyvpSFZviPQeZw4NQ1051YhWBrJos
         LY/cZt5oOmxYDMfpKljvgJtm0HkMLwCqO7KhBcJFUTxXs3QfkeS2VDXfe6gnzaGLmLWn
         mNzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3Q0P8eFn2dAgq88I8xnl5nufBLP4h9cafTLEKI6c4rSBpvpEz
	+HERCCrdfSMbyRCgbQ4ZJsw=
X-Google-Smtp-Source: APXvYqw91tc+SxDfzWtJ7LpV90ZMeUyFIsXwZ/FcVpAwOUb1Z0S5001E3QNujSBL9ZhGWYs94YakyA==
X-Received: by 2002:a25:5704:: with SMTP id l4mr6362281ybb.241.1562941159093;
        Fri, 12 Jul 2019 07:19:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:683:: with SMTP id 125ls1280828ybg.16.gmail; Fri, 12 Jul
 2019 07:19:18 -0700 (PDT)
X-Received: by 2002:a25:9c08:: with SMTP id c8mr6724859ybo.461.1562941158761;
        Fri, 12 Jul 2019 07:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562941158; cv=none;
        d=google.com; s=arc-20160816;
        b=pE6hoLiruUWigmIqKF8zWZE25V4Y4Ve3UVOLPy/4BcNd8iOceBvwZqSgAKawceyHB9
         NM7l9f07u/LHak/dhT0gopQoGPCdudJ3j1f1GmOuikguh2310K2eMV5+GXKK92RSAmcC
         /pGXhdtEHdJA/RMIAA0SH6RU6sYbPHIpFa5wyOLE5H7cM3ikiKGFUF6PSOSj7vn4TfWm
         vgJKezmskTOdvF3aBj20OyhfC3fTblajUnJq8u7kEB2jEcI8enNTTkKxRjvZ++6qpPzB
         xSQqPpvo/zAhGTxk2Tb6ep8Xyj0EaoedN6orbLjAtSfaEDIj+KV9Z2n/+61ixV+tjtIN
         1FoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=3tYEou2N5iYZgK6m9seQqHkvwf0ic0Qe60XG2Zt42iA=;
        b=0PgRJHzBcKQS305PoSok68RyWvaZUY8SS/ciHfEBWrmOaWuomyjW4e5Ah6PHvvUoUf
         5GcbH6nDt6rwleTekvDWGKZTSp/1Zj/EoS8JSGLb2W1v7E2tm5sAyL+LRZLssTBCAbVD
         XMMJEXXe/3wxjHd59dBOUQdGha+kWdIyIaT8R3Mihk8S/m3MTGFkBqVuUbBWONTlFLex
         qV4LymGKgSnL/QGXU59hWe3AOOTr61C+AXiJNU0ISW7kPbhKji+yfbTo4EMtmZFF+mPf
         yotaRfFgKMWb/EBB609P1RNJp49y9Cgl1uqhnf/1YIWfQ7UtXuolnBzz0OeYlrY6Q8ZH
         cG9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id g15si506316ybq.0.2019.07.12.07.19.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 07:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id a27so6503127qkk.5
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 07:19:18 -0700 (PDT)
X-Received: by 2002:a37:76c5:: with SMTP id r188mr6456377qkc.394.1562941158403;
 Fri, 12 Jul 2019 07:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble> <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com> <20190712135755.7qa4wxw3bfmwn5rp@treble>
In-Reply-To: <20190712135755.7qa4wxw3bfmwn5rp@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 16:19:02 +0200
Message-ID: <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as
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

On Fri, Jul 12, 2019 at 3:57 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jul 12, 2019 at 09:51:35AM +0200, Arnd Bergmann wrote:
> > I no longer see any of the "can't find switch jump table" in last
> > nights randconfig
> > builds. I do see one other rare warning, see attached object file:
> >
> > fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack
> > state mismatch: cfa1=7+40 cfa2=7+56
> > fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack
> > state mismatch: cfa1=7+176 cfa2=7+192
> > fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f:
> > stack state mismatch: cfa1=7+240 cfa2=7+248
> > fs/reiserfs/ibalance.o: warning: objtool:
> > internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152
> > cfa2=7+144
> > fs/reiserfs/lbalance.o: warning: objtool:
> > leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128
> > cfa2=7+112
> > fs/reiserfs/lbalance.o: warning: objtool:
> > leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104
> > cfa2=7+96
> > fs/reiserfs/lbalance.o: warning: objtool:
> > leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120
> > cfa2=7+128
> >
> > I suspect this comes from the calls to the __reiserfs_panic() noreturn function,
> > but have not actually looked at the object file.
>
> Looking at one of the examples:
>
>     2346:       0f 85 6a 01 00 00       jne    24b6 <leaf_copy_items_entirely+0x3a8>
>     ...
>     23b1:       e9 2a 01 00 00          jmpq   24e0 <leaf_copy_items_entirely+0x3d2>
>     ...
>     24b6:       31 ff                   xor    %edi,%edi
>     24b8:       48 c7 c6 00 00 00 00    mov    $0x0,%rsi
>                         24bb: R_X86_64_32S      .rodata.str1.1
>     24bf:       48 c7 c2 00 00 00 00    mov    $0x0,%rdx
>                         24c2: R_X86_64_32S      .rodata.str1.1+0x127b
>     24c6:       48 c7 c1 00 00 00 00    mov    $0x0,%rcx
>                         24c9: R_X86_64_32S      .rodata.str1.1+0x1679
>     24cd:       41 b8 90 01 00 00       mov    $0x190,%r8d
>     24d3:       49 c7 c1 00 00 00 00    mov    $0x0,%r9
>                         24d6: R_X86_64_32S      .rodata.str1.1+0x127b
>     24da:       b8 00 00 00 00          mov    $0x0,%eax
>     24df:       55                      push   %rbp
>     24e0:       41 52                   push   %r10
>     24e2:       e8 00 00 00 00          callq  24e7 <leaf_item_bottle>
>                         24e3: R_X86_64_PC32     __reiserfs_panic-0x4
>
> Objtool is correct this time: There *is* a stack state mismatch at
> 0x24e0.  The stack size is different at 0x24e0, depending on whether it
> came from 0x2346 or from 0x23b1.
>
> In this case it's not a problem for code flow, because the basic block
> is a dead end.
>
> But it *is* a problem for unwinding.  The location of the previous stack
> frame is nondeterministic.
>
> And that's extra important for calls to noreturn functions, because they
> often dump the stack before exiting.
>
> So it looks like a compiler bug to me.

The change below would shut up the warnings, and presumably avoid
the unwinding problem as well. Should I submit that for inclusion,
or should we try to fix clang first?

       Arnd

diff --git a/fs/reiserfs/prints.c b/fs/reiserfs/prints.c
index 9fed1c05f1f4..da996eaaebac 100644
--- a/fs/reiserfs/prints.c
+++ b/fs/reiserfs/prints.c
@@ -387,7 +387,6 @@ void __reiserfs_panic(struct super_block *sb,
const char *id,
        else
                printk(KERN_WARNING "REISERFS panic: %s%s%s: %s\n",
                      id ? id : "", id ? " " : "", function, error_buf);
-       BUG();
 }

 void __reiserfs_error(struct super_block *sb, const char *id,
@@ -397,8 +396,10 @@ void __reiserfs_error(struct super_block *sb,
const char *id,

        BUG_ON(sb == NULL);

-       if (reiserfs_error_panic(sb))
+       if (reiserfs_error_panic(sb)) {
                __reiserfs_panic(sb, id, function, error_buf);
+               BUG();
+       }

        if (id && id[0])
                printk(KERN_CRIT "REISERFS error (device %s): %s %s: %s\n",
diff --git a/fs/reiserfs/reiserfs.h b/fs/reiserfs/reiserfs.h
index e5ca9ed79e54..f5bd17ee21f6 100644
--- a/fs/reiserfs/reiserfs.h
+++ b/fs/reiserfs/reiserfs.h
@@ -3185,10 +3185,9 @@ void unfix_nodes(struct tree_balance *);

 /* prints.c */
 void __reiserfs_panic(struct super_block *s, const char *id,
-                     const char *function, const char *fmt, ...)
-    __attribute__ ((noreturn));
+                     const char *function, const char *fmt, ...);
 #define reiserfs_panic(s, id, fmt, args...) \
-       __reiserfs_panic(s, id, __func__, fmt, ##args)
+       do { __reiserfs_panic(s, id, __func__, fmt, ##args); BUG(); } while (0)
 void __reiserfs_error(struct super_block *s, const char *id,
                      const char *function, const char *fmt, ...);
 #define reiserfs_error(s, id, fmt, args...) \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a13QFN59o9xOMce6K64jGnz%2BCf%3Do3R_ORMo7j-65F5i8A%40mail.gmail.com.

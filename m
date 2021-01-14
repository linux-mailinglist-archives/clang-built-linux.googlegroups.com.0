Return-Path: <clang-built-linux+bncBCS7XUWOUULBBM5W777QKGQEXFCOJDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EED2F5A7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 06:48:36 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id 3sf2620311pld.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 21:48:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610603315; cv=pass;
        d=google.com; s=arc-20160816;
        b=hyajd+cs3KhMusXILmROnV1icmk5Kg5TK2dGxF9EVXGaoTqeyPdhln2C/Vc61OiD3D
         ReW4WSXYFG65lb9KB/Rq7WDfdfhTbAlUkbv0cR83nOCq5ZTZ5sgochXm3yvo+b+oiJ/V
         MlzzPDaNeKzFAHowjbi4/lXTok0YDe02/XTfacUyyvqNhXAVEisoD4pqDfPmcs5e5UUu
         yRYG7f6uWtEIJHyASv2iijbiIGytxJMRl6hrrvrJWpklgxDAUkQOgJScnMdI59rlcFzg
         ErOOgTsY7RnT4Qhz9EQoyJl3OB7g8t8YNXclRBVvV2kdv5/IiwOMNQiCuVG3XEvSJUR5
         r4Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=uCab/5yOQvj8eMyN6A8Awm7XLLlh7jTQK0g2otKUZWM=;
        b=GKO1VCxRol2tTAY0DTjjNtF2Pm4cR/wpdWVb/8ari5tJ5ny9Q8/VnDWTCzGzFbgkjV
         h8JKyITMEyjH5wvbDHbO06yQ0jh8vnKcVjkeLFr/PFbYDQ6wnY4Yh0nQJRNf8RKKwWnk
         gPb+biG6Yr07SmGjXGN5T3dONL0PfRMtqDl8xdUj0BU/qqXoNdjUklFOvwt5EmzDTNuP
         SRq9TOISVQ6S72YTE52Bw1BWZ668GfsSf8Fj4m946g089AMCxI6mOVPvq3Wj0bQ/2AxG
         5h+DsifpgE0OuKI0qmXhFkzRFao/eKLiHJ+tscbNIVh/+POFQ1esBWz8BZ4Z6WMrGP44
         6uNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dPgo+lVH;
       spf=pass (google.com: domain of 3mtv_xwckee0bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Mtv_XwcKEe0bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uCab/5yOQvj8eMyN6A8Awm7XLLlh7jTQK0g2otKUZWM=;
        b=hw2vz/gnXtqFSVodWz3cW0hq1g4KgLEg6Epcq9l4yVHKcDZrb0y3kYwf3TxtnGxPKr
         cMCY182m6Ar81nMhM6QwhZeBCMlmdLRxTeT3yMNC/HXf6GXzm3mV8hK3++/T7ADo5bT3
         ZWEBz6TPLMWykYMahIHn9L8FXjW0p/zLYKJ+PoKG1DaeurXqPe4MwwfqWSTZzy8oQx1+
         9zFUdWMGn49wCmvzQ5wCSK/p7wU6i2PJ6GOa9rLGA3lJna0t6FOtI+J/WIVfE4E000o8
         PaSJHJPyuN2t1X2Ucq6XDiuvJDoKuluYGCgCgFdwJrPlfd+WOv1jsonhIZ9N3fT7QH7M
         wubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uCab/5yOQvj8eMyN6A8Awm7XLLlh7jTQK0g2otKUZWM=;
        b=Dgk6fBn1eEYYgX3QFCOQLp1DWam0EcE1FIJTEgZUawK44NVb7kVixBUDPhRRSwamn4
         BlKCozZGX/shSWfyjPtZ5BqnEAGCGfzBb5Ghh1HdCtDwrrbhJ2oF87FjU+CvD4hK5c7T
         UvKxRS0wVyfMAd/bm7rnoMKGBYz5zm+anTrHCq28D9xU7waP8yLMONl5arKe7BfxI6i6
         OKU7dGevhOoWnumYtevV8HB3q1iv5MWSGz/S8buuTfmFRwBciXJ1wwMu6Jd1bVLSkueS
         QM8tyezAOE+UeUAKO4hh/W5FBsg7ODNEaMyCJA/XYji8Z7K+s5gNDcftRV7wXb+DaQ/U
         e1Ew==
X-Gm-Message-State: AOAM530WIDgDkYsWomlIDAJ/OWzC9sg9GZd6GPbc5NYfKLXxmw+QJf5B
	RKRC0pqRpZYpX6f+I3xJ+oA=
X-Google-Smtp-Source: ABdhPJylq/P9FFHYHhwBatlsnRkT7pyGzBFnpMwFQylV+vcVmjh1r8lVznkgOh1SPpiZjq325n+Z7A==
X-Received: by 2002:aa7:8a99:0:b029:1a6:c8b8:1414 with SMTP id a25-20020aa78a990000b02901a6c8b81414mr5725004pfc.66.1610603315572;
        Wed, 13 Jan 2021 21:48:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls1782207pgs.9.gmail; Wed, 13
 Jan 2021 21:48:35 -0800 (PST)
X-Received: by 2002:a65:47c7:: with SMTP id f7mr5677539pgs.305.1610603314969;
        Wed, 13 Jan 2021 21:48:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610603314; cv=none;
        d=google.com; s=arc-20160816;
        b=Cy82QCOzFv2bGnsMiLlqzD7gkwUgJxsdKN+Qv19yiWgeH1HjisULpkq2dckc/imw0m
         rLboS+j7+hW+T4ZN6eNRzuwW1lVIfWRTpr2lGT10XobcCLwiYdA1ZzeInksZRKt8JDBj
         e+Bb8GL+0eGgTO7mOZQ81bkEo13NzP4+9LrsTgMQqkZssOVG+dClj+2KTk05qK2oV4nE
         iwiYMsfZv23+JCp51ep+r9HSXOKl1owzrVB9kntGAXyuP4biJ7XzhQtimVpOGjo2GXkR
         aKj6wmvNxUOyef6KtPijCH7Drc5RZQ8uBc+OKinJCXipBNyyuwkGkRD2lBy10UBiGHGB
         L6/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=JRd7aPz2CbrXde//z5IQRqxIL9i0XgMm4kLv7NJprCw=;
        b=lQt9TP58WpoXF4cC9buS08i13Ye+3SmkEQkZuZs3Kn4r6EF5j+dvKpS6FYNvSr2B6M
         GymlHul2P0VAtlOfo6JwkmNuiU7g7YhXhZvuPNB2uRRddvDxsLsZbRRlNV0t6I88mVE6
         yZ+ybsh0aw44Ot7NfKf8WQRXGNr8Vdg2UoREdJPX5OeVaxybgxhGWSYniWVQUSO+NeKX
         n+KTbWu51ViHloNGomPCoMoN3KHQEjcm65qhvD2fMVB+Vd6ILxCj1Uf57dEQeRbOqNR1
         a3eP3rg/AuWJzNmpqYisFEFisqxJhUHrZ1ATk70RdsPKU60Ey4TYhuDYp2WTM5AFoy5k
         Xksw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dPgo+lVH;
       spf=pass (google.com: domain of 3mtv_xwckee0bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Mtv_XwcKEe0bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id ne6si334220pjb.1.2021.01.13.21.48.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 21:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mtv_xwckee0bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id d7so3601663qkb.23
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 21:48:34 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a0c:f812:: with SMTP id
 r18mr5647264qvn.39.1610603314178; Wed, 13 Jan 2021 21:48:34 -0800 (PST)
Date: Wed, 13 Jan 2021 21:48:31 -0800
Message-Id: <20210114054831.343327-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>
Cc: clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Marco Elver <melver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dPgo+lVH;       spf=pass
 (google.com: domain of 3mtv_xwckee0bphzgpnvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Mtv_XwcKEe0bPhZgPnVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
on x86.  The two forms should have identical behaviors on x86-64 but the
former causes GNU as<2.37 to produce an unreferenced undefined symbol
_GLOBAL_OFFSET_TABLE_.

(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
linker behavior is identical as far as Linux kernel is concerned.)

Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
external function calls on x86.

Note: ld -z defs and dynamic loaders do not error for unreferenced
undefined symbols so the module loader is reading too much.  If we ever
need to ignore more symbols, the code should be refactored to ignore
unreferenced symbols.

Reported-by: Marco Elver <melver@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1250
Signed-off-by: Fangrui Song <maskray@google.com>
---
 kernel/module.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 4bf30e4b3eaa..2e2deea99289 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2395,8 +2395,14 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
 				break;
 			}
 
-			/* Ok if weak.  */
-			if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
+			/* Ok if weak. Also allow _GLOBAL_OFFSET_TABLE_:
+			 * GNU as before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_
+			 * for call foo@PLT on x86-64.  If the code ever needs to ignore
+			 * more symbols, refactor the code to only warn if referenced by
+			 * a relocation.
+			 */
+			if (!ksym && (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
+				      !strcmp(name, "_GLOBAL_OFFSET_TABLE_")))
 				break;
 
 			ret = PTR_ERR(ksym) ?: -ENOENT;
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114054831.343327-1-maskray%40google.com.

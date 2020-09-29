Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXE4Z35QKGQEDUP2NJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA0427D720
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:43:26 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id p25sf796670vsq.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601408605; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBZbqNw7kDqBNYehQXNdheuvKXr5HbPgB7ieM3my0AcwSE+nmsuf3j35AsiEnZvQGo
         WM/b1vsMouEotBaBzuR1ik5MHb5p0pq6q4DumEvrGT5xxu56GJxP4TpgV/pwuXu5Tem0
         A0uEpJNUxF0n7fS00CfejHLjiM6jWqMebUuJgU/CavymzUg1wIm6LrhiLjTKhYw0Fah3
         Fluzxt0Li5ViUHO5l4X1HMTZ8DsNzRWIlj37v9nL3uQhN2GDJqf89rWgbynC2KDOxwbM
         Ok1WjtRTDpNR73B4R15yKSEgSbTGLBkDtJzVgzVM4v5bybHpxTzRPX39hKxGWubV4h+4
         JEBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Knbpick7+ymE5qz/45kxxYQo8aVql8VZ5Y7GKVd6p8I=;
        b=gqdp8LC5I9r7HtJnSw0qKCJ4PBncwcAxvbmsEUEffmzePjdfiMlo/Ua4gZV641kY4f
         cyb4dr8olFK1OxmkZQlwLqS2i0E9axoRDe6/fxnbBR3Gm1GgmC+N/0Th2EKUnEolQJfk
         eNXOQgwBmXd4bpNqtbTDJ5qhU9zKTCReBaWcSJVmojq5xzrgFzgeSzdlEIyWOk1tmO+H
         ag6mKsqKs/HToI87XAOICgGvucCPIcm1O7R41opGjXKHwqFx9F8RGCEQkvWLAHfh5Shm
         JYMHLktwK0U+7iHKN6x3SvhRn8HhvxdLDbYEA7VMdApIQJF7Lo0H5CIx4QJWDxEhztUt
         4wKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JemOKWyu;
       spf=pass (google.com: domain of 3w45zxwwkaegxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3W45zXwwKAEgxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Knbpick7+ymE5qz/45kxxYQo8aVql8VZ5Y7GKVd6p8I=;
        b=j7fIG3LI97uglxUjNxXuWNJ5VffxcA6ftK3bMj8y2GB3SYb+n0hVk929jP2oXVcUsx
         j2Gjl8FVG4amNwIWWRsLXvdFMvwrpB/SZPLAyQP1p+3UZiZmq3aZcP9C8QMrCZXN6Mt7
         hq5XjCauTBs2nHzY2ci1PctnIh7B0kSdEn8OkHW8ReLSYUFVjwM6wIIQK/lenvVGmHOg
         lwfH8XKAtpEWOA/asj710EQroczYVVdzLVrsMqTv1WWAJUBPbklwE3U4Qd938AuNG0sI
         La8my3NbR2hu3ThqhPGnAhz0JBc/EiSThIW5M2Ty0UTsufMov4n0Oi2pEXRpHHpTF2l7
         Z9Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Knbpick7+ymE5qz/45kxxYQo8aVql8VZ5Y7GKVd6p8I=;
        b=dqaCDLwwuoqaMjC5WoWE2iutR3uDOmlFDpuOWGoEvrqFubN3Mb/33tJ86cVbxWtFh0
         9kgXcoPKH6wSTVMJXTFpRnFTUEaPYxyMlQp6KT72uVVKEvwcQUnIpIR/qV4Wyit2P8mK
         JoNXgLTZWk5PnLgQVY0/g+VTI4mU/UAvZgpjzrIBh8S3XvZxRKEmYE0IgV5/kA+1oI/A
         vRhI9zT8vhLQFiqlQzbzrIrc2Dojn9FVnJILeIy08HCnfqrOe30BkmAfDL5U4x+jyLQo
         AfV2VQ+GXfOr5ovMsJN2c7YPMy2X5gMGJjhaj43Ljh9pe/lmiHKB+reJVqky2wJol0G6
         kx+w==
X-Gm-Message-State: AOAM531GR8ORj71Kwzz/IlltIjnmTAh2PYGXlwXpuyW+ikEr4HIqLhoe
	glEsTLC+eQsbP6IferKHboM=
X-Google-Smtp-Source: ABdhPJyN5oOiFULHvrLYzNCkycIMfdY9gCfozZWz8FIHNogP5C0chLSUbbnc864yMoLCq6bKn9QPlw==
X-Received: by 2002:ab0:6c44:: with SMTP id q4mr5177001uas.103.1601408605102;
        Tue, 29 Sep 2020 12:43:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:172:: with SMTP id 105ls485641uak.11.gmail; Tue, 29 Sep
 2020 12:43:24 -0700 (PDT)
X-Received: by 2002:ab0:4287:: with SMTP id j7mr4919537uaj.53.1601408604627;
        Tue, 29 Sep 2020 12:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601408604; cv=none;
        d=google.com; s=arc-20160816;
        b=gOSMO+3G1JD1kV4haUSLl2fOcXLOZepR1nKD0l9qv4qZ007Yxfk06GhSt1LxpZtazZ
         dcR0oy4JZKQTdt53yjsDLi+hstNXuiic/LSeuESbwKQDIWixMI/c2yzw0rRFcQpoXLto
         eo51xs3sX7/nGoHbLXPyRx0DT04Y1TzbNA8XE+4Izbah9ehROhS7WpIy7VWx3pJAj/mO
         jwzMB1H6h3r0XXn86IxkxQZYh0K40tlfE15gGjzyLptIK53ykIfDa/1FrKFOBF9ZkpDl
         RxWoDUwaQF0jjVM1Nri7ncXKTcYfN7Yc2x89CyhxdmO88t/IgXA8oUubQ49lZaEut1cI
         V6bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=L+ZQTMyUzbfAF4MuXzem6ruOy1jTior618txOZRQrDw=;
        b=m4I2eeF7F4qXFf+5x5+yvLFJnAVH7CmxrAKhMC/X4PsHu1NQuMZLyz0yivAkvAky15
         sRHRyEqt/xdUz/yuXDfxgzc2ZQAj8B2bG4HOWOkeIBXr6Z4l7pT3Rfi2+vGt3w83uFdl
         XwemQIIgvyhNLi1YyBocOYiz4XGubxZo6mSHN1XDGCiUHqh079qQn4oDqQRVXuSLCTaO
         IYcMbW1W5orjlKP/c7I+DX8miA699l0iP4ej5LR2KJUKURCFR5CWoPPJ1j8mWTS6vZT/
         0bPv31LBWZRUjQM0oUWk4P5iO1epADPiQ/yYidyEu3cDdK7FgbU5RdwEfxpY9Tuv4B5F
         UOjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JemOKWyu;
       spf=pass (google.com: domain of 3w45zxwwkaegxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3W45zXwwKAEgxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id s11si414080vsn.1.2020.09.29.12.43.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:43:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w45zxwwkaegxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id k13so4636837pfh.4
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:43:24 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:2c09:0:b029:142:2501:34f8 with
 SMTP id s9-20020a622c090000b0290142250134f8mr5448080pfs.81.1601408603686;
 Tue, 29 Sep 2020 12:43:23 -0700 (PDT)
Date: Tue, 29 Sep 2020 12:43:18 -0700
Message-Id: <20200929194318.548707-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH] compiler.h: avoid escaped section names
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-sparse@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JemOKWyu;       spf=pass
 (google.com: domain of 3w45zxwwkaegxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3W45zXwwKAEgxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
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

The stringification operator, `#`, in the preprocessor escapes strings.
For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
they treat section names that contain \".

The portable solution is to not use a string literal with the
preprocessor stringification operator.

In this case, since __section unconditionally uses the stringification
operator, we actually want the more verbose
__attribute__((__section__())).

Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 92ef163a7479..ac45f6d40d39 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 	extern typeof(sym) sym;					\
 	static const unsigned long __kentry_##sym		\
 	__used							\
-	__section("___kentry" "+" #sym )			\
+	__attribute__((__section__("___kentry+" #sym)))		\
 	= (unsigned long)&sym;
 #endif
 
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929194318.548707-1-ndesaulniers%40google.com.

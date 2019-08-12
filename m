Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW56Y7VAKGQEFIGDYLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3CA8A9B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:25 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id l11sf43955113pgc.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646683; cv=pass;
        d=google.com; s=arc-20160816;
        b=HfXJb1pidB0fZ9q2EhBXID7HOCcT5lTqnsXgcsTv4wJ/LHGDhoQnCYPbkuPlbX3Zw6
         F4Hdjt6iKlkWuRxv7oBnBcYYPNl1PwrLmRD7BaS1uy+epB5Ee9EoELmorJB7MQcXasI4
         GZjBOOQ+IssTYGabuUeait8o/NqoQgDbpZA5zwIpUX8XvM7oS5t8NOWxI+CvlD9Iw07i
         A1IkXxWXFnjWp6swDMZx1soLZvAZ5y0UuJ3+H4hXolirgu4sb4PskwjkUmukxT6pkGak
         82Nex4MjHYLv+yPKUwQLjTJLJpink4Aie7ek7nj8pXnEE1zfOpt5d1XzpBG0N/jJsORi
         GKfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=R/6rufnJ8tsid3VvQyjVsPbt5Ifu+jFTVnhJqfQM7p4=;
        b=EB53apUj94doJoIa+grE6sId62PukR6eH+AKcHPbG9DRieWTBikdEBBct1c+DTIfBP
         QELjJ4FMyc7YQsFx7ik0RvHU0k7g/IGnGWmgYsWLDMHwE/lJD5ObP0FN52+nRFfovTHl
         vWUHV2gHyZ12qpM/5fkwM+EBoWoEVsBDuxbVFUM9N0HohCReIcRZm0r70RD7q2Bk4o/s
         NLOcikgBiGX23l5NcWxcrjCHYAfyNItuVxoIkAPoLYKgYtfzt/0pabUS2eQriq17CMOX
         BOne01wifyvuyXyLMM2MjPl8fKfSg990gt5+10twhE99kVgfySxjVkhwJlyl/0VbIaHa
         c5qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAfaiSlH;
       spf=pass (google.com: domain of 3wt9rxqwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3Wt9RXQwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=R/6rufnJ8tsid3VvQyjVsPbt5Ifu+jFTVnhJqfQM7p4=;
        b=k3A4U/JL3r4EVNqmPXbVNSG2JArvOQEn+Lsr1pi2E16mfpHQm3fmyKHUMP+DruulRi
         2wjs6v6M/NwMdTTQ7WtQ23jYm9MpJI7vKpuWqiKp3eQ7PivQsgXkfw9Uz0SvS5J3rjdc
         vZ77XQXJCQqrs0FBBYygKSaXe2tW5AT3m9jlXBmOsy43OgmAB7FTYMa+GnaQIWpQmh6z
         NcW1SWmflNC1RlokiQOsq82wiskWjEJMIOkc2aq0ExDSLs81OT4nMoS2HgggkmH+4Acd
         8TsVl2fUQ9lcTpV4X9oJ4P4xjgF6fIb/c0qqcwUU3jorNEsQtUkvL1vq11uw/9DkQoxH
         9zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/6rufnJ8tsid3VvQyjVsPbt5Ifu+jFTVnhJqfQM7p4=;
        b=ENX/76CpnVg2WxVJFSX+64AJzpzk09lmj4XAH7p+n4uPZbUXc8egTflFizjAmWdKEu
         XDRBsQKjbj7Z7FT1xZjXej1a5zTC0ilO+kbL0rbI61q4319kHka/DF7Yowx6HBJk70Rr
         7yiQ3ZH7nDpMdgdOArz7Yi5Y0bjk9NZeVIJ95Kuemcz5C77djImTMyRLm3WYSFBWYje2
         XgNNS/I58u+1G//77cAAs6+aft7vD+ogQVLJDP0UH3CmpzNo9KfDdlC8WurmQIfCb80q
         Jo2zcxwlSjwdaedVQPWN1catpF+rckwkkZn2ZrUe+wmW0RUYAPZ7Vla0apZZjGCahvQh
         ypdQ==
X-Gm-Message-State: APjAAAXpm/Nl3vN76fF5mziZ9nE38aLYtoOWJdpu3oC9JgwRFvjoish4
	RC1QUPmll7zkm2Y+velEQDc=
X-Google-Smtp-Source: APXvYqz0ykzyRNVSMZvrQiTlLz18G6tR7iZM8E8DDqNBgY0JiKVdOvzzsfdMELKCxAUe0aB+e+B9VQ==
X-Received: by 2002:a63:9d43:: with SMTP id i64mr32073266pgd.306.1565646683456;
        Mon, 12 Aug 2019 14:51:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:20c8:: with SMTP id v8ls3475310plg.11.gmail; Mon, 12
 Aug 2019 14:51:23 -0700 (PDT)
X-Received: by 2002:a17:90a:23c8:: with SMTP id g66mr1205181pje.123.1565646683168;
        Mon, 12 Aug 2019 14:51:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646683; cv=none;
        d=google.com; s=arc-20160816;
        b=NFiouzrWKrKChJAFksABux32ZWIW8yYHUtKcf3oNNOUNAn66uxNwRHdx3Ycr4CWbvf
         syTsaUavP7arLdgY+rBRIaQgEvZyr2xaXwpZ05Q9dOgZRHjLtUp6/8ModKhTF4b2Hu6K
         2fw/MCxlQVRnzCIkXuPp8nrpcorKQROAraKC4WrUA/yUqPBXDtrgJmNeztudckfVknSY
         HFpNceKBGTZnO3/rzG1G23anMWPy7P8N/JJdnVbcYGujflqyVW8m0AntHkYOODoy5P1S
         Xzo+hUkB2wSwlidrgRpLMp6RrlaIddh2Ic2s1FGMWMrUSI6gF8Fwb3Ih+iK5gV3Qpe2f
         n+jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=VzbGHvSiySq50YMMXV5wIRss5YK1rFgm4/UGnmN70Bc=;
        b=ZSBtyr8cBSIvmkYfXGRnw+mPolJUigHP91+4q6NBNRzbuADEc17D2z/RChQshFSHuM
         4VBz3GmXOW9p3DlMQUiA75HjetsRU5lvEqEumoBI96Mu5/cTWc3xD/oewpv7dxkkPNRM
         0MuGfuBFjxNN2/UPGIYVNeZEsRMwEcmYf/RKaE908Unj7fLlcSd9uB/1h255Adg5s0IO
         jTs7/fGWmHx32idaTW0EEFtYZgZ41zI6ks4pWuMNShYJk3JDs8luHFBtcI9qkXfxkhhB
         3Yo0oCsNn6AKJoa/jPxCF47XVI0SIeQ0iZPsOx0c9vP0IBuwfbPb/wVhzmrg1gQSPtpv
         FFdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAfaiSlH;
       spf=pass (google.com: domain of 3wt9rxqwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3Wt9RXQwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id z9si13609pjp.0.2019.08.12.14.51.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wt9rxqwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id q9so65316113pgv.17
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:23 -0700 (PDT)
X-Received: by 2002:a63:2685:: with SMTP id m127mr31628780pgm.6.1565646682512;
 Mon, 12 Aug 2019 14:51:22 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:34 -0700
Message-Id: <20190812215052.71840-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 01/16] s390/boot: fix section name escaping
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>, 
	Gerald Schaefer <gerald.schaefer@de.ibm.com>, Philipp Rudo <prudo@linux.ibm.com>, 
	linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fAfaiSlH;       spf=pass
 (google.com: domain of 3wt9rxqwkafe6wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3Wt9RXQwKAFE6wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
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

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/s390/boot/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/boot/startup.c b/arch/s390/boot/startup.c
index 7b0d05414618..26493c4ff04b 100644
--- a/arch/s390/boot/startup.c
+++ b/arch/s390/boot/startup.c
@@ -46,7 +46,7 @@ struct diag_ops __bootdata_preserved(diag_dma_ops) = {
 	.diag0c = _diag0c_dma,
 	.diag308_reset = _diag308_reset_dma
 };
-static struct diag210 _diag210_tmp_dma __section(".dma.data");
+static struct diag210 _diag210_tmp_dma __section(.dma.data);
 struct diag210 *__bootdata_preserved(__diag210_tmp_dma) = &_diag210_tmp_dma;
 void _swsusp_reset_dma(void);
 unsigned long __bootdata_preserved(__swsusp_reset_dma) = __pa(_swsusp_reset_dma);
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-1-ndesaulniers%40google.com.

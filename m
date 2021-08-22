Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB4ERCEQMGQE2DIX65A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFDD3F3E63
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:37 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id h129-20020a636c870000b029023b4f2bc94bsf8310908pgc.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618696; cv=pass;
        d=google.com; s=arc-20160816;
        b=gPCo8eTQoj/8ZpSmXVjiCq0+HX9hDOrBeFiLVN0JJY0ClzrDAemxh1BHEP3xN5QmBL
         zr5dgA4IHTSsP+6mw85K7aYRKuuoEWkEnuaKru27gsEkf6jLTHX1CFNzF8Gag1kXQcKe
         IZC9xm57LLnNRgmztm8p1lZjd9yG3UUtuv/1k0DQQNQiW2zaP0pHnNZAZZ0FoDDQ1001
         4V49UQcz40vd706yuuJFXGqVgNyW/1hUdk/LsWHFenXGCckpYEQcVBmKER/sXaLvQttM
         /T/LI3Z5tm2WlQGXdTfMl+U+Q5LOeG8Jd280YQpPZ81JuveZ4gYAWp2z/2CQqld8kucE
         08Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BgIyYVliuX4JBzMl4jsWi1DpegeLDxLlPnU/MAygbSI=;
        b=ryQxBCyYOCGqsaATBrM8vxhmAg+aD0hGrsoM/VKFuqXiH+DKVcqJlnvSHasXM9adto
         Tb9Rgid4HMpVwKLh9J/O0DPEHwy3yQDPwyzZEyQpG3KjLioKE2AQq24gbACL+9ucqcTy
         sxAutTFV5V+UdDknqbaFruqwVHSVhbkNcLQADmP8eIZorlWw+XLJuecKzTO5pzPoMYG5
         vc4tCRNTrzfHZ43CV+VewqstGpFNzO48N++6GPcgSOPgPuGqx92IKygpOksW5+OlOgid
         LyyDt+N/0sT4S0HhqqzyvksTroyr8a83kR7Tnzoi5YNxGtjItb1hHvgROtinpazSS2RZ
         HtEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gPfKFQML;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgIyYVliuX4JBzMl4jsWi1DpegeLDxLlPnU/MAygbSI=;
        b=fbc8I4rIJ+vuQhMUbWoEYKXAl9n+Z4esZrkuF4D1aIBrZX9iKEzssKsBK778tafReK
         yPFP4LFHWcWJU4VcvvMDmCpaIbgj034KB6BFGZBIx0a/mTSRZQn+XSMpLkWelRW1mjel
         ktk7UhlXzZYssVBU9ZZ9FqI4PCJf/W8+pus2N5FKQlp/XysLHS+rsLMb/J+dblvBX7rG
         ZHHBQ/2siV5DseE9XJwNGTv6jW8oorSVci9MeZ7MkaijcxBwwgCO5VJEXPhbtOX+Fqvj
         f/2qlS7UM4hR+HucXUrteruQ/FSFw3ll60j+u56lw2tVGhziYd6AfvpEIDaWWZINhZEC
         uTeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgIyYVliuX4JBzMl4jsWi1DpegeLDxLlPnU/MAygbSI=;
        b=jwwx5AnLWiabTv6rSmcg7oOd1gqOMD3T+263lkpYjFZLVSkRudDKQUHBYdJp+94KGj
         LuPCFMJeEhAc5z+O8NgbbuRGRA3hgtD/BYkpmxl6aaOq++dxY0jNRMVAL1LrWytteb5I
         3feyRK+UEzrpIPr2/ewjXQfJMvkZICuwNwNP/dUmLBAAkZWx0xUlWAM5p+X5JAD08/tG
         OlGYJmG0DbcbjWek0J7Iq0MM68ZgoloUNRff6W/Dr/Bb+AU7ZpiXMai9AJXZDoy+xjTB
         UM54DobvlZfVashl8RW4+CQjEzcnA6EDimXUta1IAo7q3eaFW9Zlyz117VDApd7V5SSl
         j1lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wmAZRgK8JYCoyKym69b8aaSklvDj5ssFFyf401KL1cCoqvmql
	DeSMsEYFPUF5sRQxAquKzbc=
X-Google-Smtp-Source: ABdhPJxUs2wNH3EVerW1fRZqESFFAnEa/LQMUHJh9ZOCNa3pv+MPuqlzTcAosswpeZUrL4SkGpearg==
X-Received: by 2002:a17:902:f552:b029:12d:3d11:4ff1 with SMTP id h18-20020a170902f552b029012d3d114ff1mr23342081plf.1.1629618695851;
        Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls5217041pfc.2.gmail; Sun, 22
 Aug 2021 00:51:35 -0700 (PDT)
X-Received: by 2002:a65:4209:: with SMTP id c9mr26671802pgq.399.1629618695091;
        Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618695; cv=none;
        d=google.com; s=arc-20160816;
        b=mXFOdibcQt8H67wTr2ORp/CTAyIrYtof33bCIQed4kjyImRFIyH0D2NvCFkIg5tU7A
         37EKPbZkr6SA8lt8c4CnQjNq4PHb07vjebZtjEpivAm4BAuDyCw8cOTKrmD55umO5Gl4
         E8TNfQloP4iXK5D3mS4DuVOZzf4a999nmuk3SIjH5nZNQcyOwnpJGUdWvwf/+RIyONQe
         iDx9Q0YeIPZz79nWcp4NDwNXqp0mJp2R3J8KrpfzljFnZAAJ0v8zPWDJG6sgFrXF0H3j
         6drZmT0YEFpnB9b4AjTtcIAoyJYNQsG1QQwWpmfBM7KEmISjxyPksj6t1oiynW1kYBUE
         WoNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DWlzPq33px7me9bXqrWxCUNZOIwKVGghhiRcqTaUGwk=;
        b=iXNYoxGr8QbAhzg21ltx2MKj6OdWVhr4YAlOiUM55BdKnbRl1z7TCzutSmHsl7fFRW
         JLv0QANbCqijJK5oLHQNDjEyxF279zf2WDW2loYu1or3JubDa0Qb+sj9XfCu1NP3Uzvi
         E0akIVwVL6G1Bmyo1uwhEhU6Tg7OP6TB0h4U1cqvJyY6kUsE5WY98mZ/EdLiN/qv8bJB
         Y/hsZ9RAJmRN1M0JlUF9UrPNsk+ugsBDj7ZbXB85dsoDmZVHRZFaUliTZl2EnMZw7KsU
         xyxo9nUdEgNUX1RltkoIr/FJ2X+bvoMaT2A5LjNM5+JpSUskJXNlR6FAIoJoMZ2RnASr
         /kiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gPfKFQML;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id d1si220338pjz.2.2021.08.22.00.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id e7so13641078pgk.2
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr28148090pfd.72.1629618694880;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u16sm14258530pgh.53.2021.08.22.00.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 12/25] cm4000_cs: Use struct_group() to zero struct cm4000_dev region
Date: Sun, 22 Aug 2021 00:51:09 -0700
Message-Id: <20210822075122.864511-13-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633; h=from:subject; bh=XJ28RbiAIR789pL5ljsQmPFQCzt2rgVz2fdwkdxbaR0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH3HlDUPx6be3rlUq/CBmzD2GRCw+0CR7NhVwWw 8Vye4qWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9wAKCRCJcvTf3G3AJqSCEA CNuY2IpYQBx1F7wrvsNNLEopI3m2kTyYLlZtyFsdUm0RGGoBGTywkyBaZO1Edtb4ub6+mqap/aC+SY 2XLyvuCP/jgpm2GALRblFBC48syM/wkzpRMyIo5uZiH54oJf1wwnCjziYmSRLy9OJKYBVj8v+XULQ7 5pgoTn2l8r3lJXYN+PiMNfeww55r6RqbkH+dstdLlUKBwAKur2lj2QVyo2Lm33540agIbJblyncbw9 fq5DGw3Pd/QKuqMIr6XY0skrLTZKRrQzDz+9tlvK6hJm5dSe2NNWEis+W3w9cQVdsrmwxkVNm7ltRk /4RxEsSDvAcw+Vo+KNnMCfkSHp/rxT8lH4l3r2fIpEYKeTUmRvgstPkAjDq58T6nMUR9CiknM9otPV Db14QqEoCl66o3zSZVMihxZd/6VD6NpjmZPHPEprnu2iMnrI5wYDuvqGPpLSQPzAbha9TlvdZy0/MA cFNEFw/QY6nfqTaq2F/HRvlGyaWXstyWj43f1BSgXxwtv5Sn6Ak7ffa8cyu6+/wU253ZxVPhpeRW+A zpMkcwOHeNEEnakTrphUTnKbHw1Xn6Nu/uvAa7K+ZToYKZsfnsArx+2X8DqPKc9y8wMzsdvpO1I06a wupH7l3GAS1uGYa+YmG+RtKpJTHWFEzVgeCqI4WmSAFwevXlrLkYhGA/Od+g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gPfKFQML;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct cm4000_dev that should be
initialized to zero.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Link: https://lore.kernel.org/lkml/YQDvxAofJlI1JoGZ@kroah.com
---
 drivers/char/pcmcia/cm4000_cs.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/char/pcmcia/cm4000_cs.c b/drivers/char/pcmcia/cm4000_cs.c
index 8f1bce0b4fe5..adaec8fd4b16 100644
--- a/drivers/char/pcmcia/cm4000_cs.c
+++ b/drivers/char/pcmcia/cm4000_cs.c
@@ -116,8 +116,9 @@ struct cm4000_dev {
 	wait_queue_head_t atrq;		/* wait for ATR valid */
 	wait_queue_head_t readq;	/* used by write to wake blk.read */
 
-	/* warning: do not move this fields.
+	/* warning: do not move this struct group.
 	 * initialising to zero depends on it - see ZERO_DEV below.  */
+	struct_group(init,
 	unsigned char atr_csum;
 	unsigned char atr_len_retry;
 	unsigned short atr_len;
@@ -140,12 +141,10 @@ struct cm4000_dev {
 
 	struct timer_list timer;	/* used to keep monitor running */
 	int monitor_running;
+	);
 };
 
-#define	ZERO_DEV(dev)  						\
-	memset(&dev->atr_csum,0,				\
-		sizeof(struct cm4000_dev) - 			\
-		offsetof(struct cm4000_dev, atr_csum))
+#define	ZERO_DEV(dev)	memset(&((dev)->init), 0, sizeof((dev)->init))
 
 static struct pcmcia_device *dev_table[CM4000_MAX_DEV];
 static struct class *cmm_class;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-13-keescook%40chromium.org.

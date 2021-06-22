Return-Path: <clang-built-linux+bncBCOI5MHU24HRBB7JY2DAMGQEFXVVF5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2453B00DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:59:36 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id i13-20020a5d88cd0000b02904e5ab8bdc6csf4487116iol.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:59:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624355975; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmDjL7YC3n5bKoaNCf6o+C2V0QElQRMlqVU59LCvGWPpU5LPwoH0qJNqQVGiLwllLM
         sdbdhVTvc5ibZWdcdMLpE0/p+N1Qh+g2mD9EXiThSdeoiqq0U8qGY+8vI7qXeEoqT2iv
         O6opVPKJc0V8ZRT3MCO9VTAeUKQLZKtKqvRn92SEacnTSD/rB2KHtz3FnQRhxZa96goF
         CHXNUYamzk4ovxUwfLhBKYFqX+Fqv1sbQt2bsi4tEFQcTrr6HRHXV9J+zLDhN6t44LMq
         LGuMjd0yBxl32iXZ8WfklIWVAf4BqUg+AYXE9+7pKG7naomIW0WRrIfNYf/cGwL/eRIQ
         GGGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature:dkim-signature;
        bh=4rioBuiYk6zqVhZovTZfOM+R+CTnSnPZKjqw8vj6sD0=;
        b=0EoszHsR3cy6xbsw6D9T/rJ1qWbC4N9FCZW/wcCxc4f+k4B5QcwrWRWpQA7GzBbERG
         5V7hiO99lRqftetkWLs+vumCoTq/6trmZlI1uQ9mpiutTpA1pSpQ3oHe/gRexCPHsTPn
         oQ1+lEQZ0ChnetgnydpBFD29uweDD+cC9dHMqk4Ys7lRukld1vzHj+AoAB3SDqvjw+t9
         FT7oH+wlbTGdPQysKZv3piQFr2FdLDgwEA/BFVoj4jrjnBCmYArnK++FA1fT+r0kd6L0
         4kaGwkX8d5db/FuDsDtY0fIIugHvBDrWngrQDqMhIa/RT+Vx79cAiLe6zYEhPDSbkmun
         seJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R24mIOPv;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4rioBuiYk6zqVhZovTZfOM+R+CTnSnPZKjqw8vj6sD0=;
        b=k/gVx2rieehR5F7dWGEyfHogZBWdVzo2cDTjfgoRWTn/7GiwQuNekGXlJuWSK7Wovr
         PZU095s+rHT8+760aG00Ne2y97X3TkzKTaWJhV1k66FQedx1+bKxuXYc5YKK+4j9qt3Y
         lwWLOJjKbTTkOYXN9SfZzzaVKhrwocB6oupwcmnPu6QJvYK37Qq5lx3LKmJb2Qla3nzq
         uzfgFIcytVxHo+maaL6GIkdZjOfmjbDn14jWhAZiqAYDl5UXjgIS5aZihRUvXPiyI20k
         8hZTRTA1mKqG2jHR7lMpX1A7YTJMNaXHAUAB2xdadBbgtPnyaLOKJvOe2d3ABy6YFvow
         oX4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4rioBuiYk6zqVhZovTZfOM+R+CTnSnPZKjqw8vj6sD0=;
        b=uKogOJYalww4QVjMSaajSerwXro8adWnjKLSJeWj9YLx6QkFNzGuosYVqhhmjQ644v
         g+JeqFzx4dwm56yGD43zuVGKuIswjNx60qoVDXG9P4g1UJkh1MIhBrVaqzMR4t4+DFpe
         bYs2mTM/AE9Y9wZP5e7kPaw0y61rxEUgyXj8MqFWUBwong+gEf2wwBiBG898gJ+MRBKU
         SOlshWFxgsCHgyT5z7WGZ4EynAs9lhTWT9iPH73KHfvldstN3cfFhiVgqksMFxh10fCQ
         i3A/AIqjTlpg7HgBzCvVJg0OTCygsVPDxvNR55IJzdvJa89ECLgLkB/T6iRwRXFU2CcE
         5yBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4rioBuiYk6zqVhZovTZfOM+R+CTnSnPZKjqw8vj6sD0=;
        b=YzDbnxTs/jPx1lhWIqfp2pU6+OzA3iK8GgxDD3kYGUeEKgpU9HonW+cxwXC9KCl79n
         ILphRN4a/a0IEVB2acdDXRvUDilQg9QEaBpLyy3ErAs4a1c+N1LpHRFuy7Ph5gWSLkbY
         AC9x3u/4LQqJcOfTUhLBIobEH73vyL7Curgoo4mygypVYK75TDGhcsgpa7wSJBmxCZbM
         u33PO9/55FBOGi+RUmHtcJf9ljag2q9Evu7ipc1Ddsy0Cv2E/eNnq/PN/5+vxumxkU1/
         U326K88W1ULq0ag6mJIMYO65RIpL8YKdWY87tKoDyWBvfZ2I2GHl+oq/DULFwGmg20YX
         G1xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532l+lMcU7MIDpYp8ltzyqdFGIyaaFWDOZU4hl3h0bM3w6y6sZ8M
	hTiEEWkKXn6IlJEpQFftJbk=
X-Google-Smtp-Source: ABdhPJzAefZT3oQOa1UDC23UGzcNP2hwDZemtJOvLTGAbF/Oq7/+3p6nSkjEXVjMaQTnoO4fwiLlxw==
X-Received: by 2002:a02:a153:: with SMTP id m19mr3146784jah.105.1624355975211;
        Tue, 22 Jun 2021 02:59:35 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d2c8:: with SMTP id w8ls3344394ilg.9.gmail; Tue, 22 Jun
 2021 02:59:34 -0700 (PDT)
X-Received: by 2002:a05:6e02:bed:: with SMTP id d13mr1969264ilu.259.1624355974882;
        Tue, 22 Jun 2021 02:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624355974; cv=none;
        d=google.com; s=arc-20160816;
        b=SkGnhzBWQ1gqB6u6Xzy21vj5hbkEIz9quZ6kuQ2ClstBMx6nxa1JxDgwIps70KS9AZ
         KvylrN18Zl6HnUITe5UQWglJ7IBUAAym3Hz/ndJL45Svc/VGxwYuL+r5sKQqyvKSfTBO
         lWZ81IvroncknWeSgSiTPLcEX+X0IqkAzxL0UO0HA2+6gR+hbxzWIjNSt5Ep2lawZkdG
         6RTm7Mf7yX4lPkFrusUXzBqidewMq4q69zpIWqXty+StC4zvpZCKUulnmQUFoNn0LeXy
         EemU4nYXNj4hi2tvBjTV++K7rllLM/kV5RMKHU+nEg4KGuOYgFnG4vJnyaHCj5CiCfF/
         KlBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=fWyxVP5TubxadYnG5B6dMDsoSFF6OPmW883RO9Ii+UI=;
        b=h4hwKVhLTOr9OLENDHgF8XTxMtKUXtloeH/crBYITFpWn6Mp9hdUvhNSYed/nAcOPu
         ROLMiQFyQjRm2l4ASq7oX5+I88cjhENfHMEmz0sUbHRNIIiyD1/jvPofCuNjqrMayQoT
         gSF2hI6BgteN97Xf3kfGfxeYQ+3malWM2aHI/lWk9Ay7F4M3dPSR0fBLGvMC/A/qiSfO
         fpEhQ7fcUV80QEYbgxaJzJFP6EiknfEV55/3b7PORtiBHep1yoc/W5h6zoLcfSEtBiko
         OORdYMdhlopQKdw9h6PxDuKYRcHGcNMhe8kzcyTEABjUUtY1tpNhKGaX2+naXH1gSsgm
         FHOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R24mIOPv;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id h10si118334ilr.1.2021.06.22.02.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id c7-20020a17090ad907b029016faeeab0ccso1407305pjv.4
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 02:59:34 -0700 (PDT)
X-Received: by 2002:a17:90b:3b88:: with SMTP id pc8mr3293153pjb.124.1624355974371;
        Tue, 22 Jun 2021 02:59:34 -0700 (PDT)
Received: from localhost ([43.224.245.180])
        by smtp.gmail.com with ESMTPSA id o20sm1814577pjq.57.2021.06.22.02.59.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:59:34 -0700 (PDT)
From: gumingtao <gumingtao1225@gmail.com>
To: cl@linux.com
Cc: penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org,
	vbabka@suse.cz,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: [PATCH v3] slab: Use __func__ to trace function name
Date: Tue, 22 Jun 2021 17:59:25 +0800
Message-Id: <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1624355507.git.gumingtao@xiaomi.com>
References: <cover.1624355507.git.gumingtao@xiaomi.com>
In-Reply-To: <cover.1624355507.git.gumingtao@xiaomi.com>
References: <cover.1624355507.git.gumingtao@xiaomi.com>
X-Original-Sender: gumingtao1225@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R24mIOPv;       spf=pass
 (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

It is better to use __func__ to trace function name.

Signed-off-by: gumingtao <gumingtao@xiaomi.com>
---
 mm/slab_common.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/mm/slab_common.c b/mm/slab_common.c
index a4a5714..ffa3b11 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -378,11 +378,11 @@ kmem_cache_create_usercopy(const char *name,
 
 	if (err) {
 		if (flags & SLAB_PANIC)
-			panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
-				name, err);
+			panic("%s: Failed to create slab '%s'. Error %d\n",
+				__func__, name, err);
 		else {
-			pr_warn("kmem_cache_create(%s) failed with error %d\n",
-				name, err);
+			pr_warn("%s(%s) failed with error %d\n",
+				__func__, name, err);
 			dump_stack();
 		}
 		return NULL;
@@ -509,8 +509,8 @@ void kmem_cache_destroy(struct kmem_cache *s)
 
 	err = shutdown_cache(s);
 	if (err) {
-		pr_err("kmem_cache_destroy %s: Slab cache still has objects\n",
-		       s->name);
+		pr_err("%s %s: Slab cache still has objects\n",
+		       __func__, s->name);
 		dump_stack();
 	}
 out_unlock:
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao%40xiaomi.com.

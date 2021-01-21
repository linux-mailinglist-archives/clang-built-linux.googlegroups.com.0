Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBZXEU6AAMGQELRQXMIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 782782FF740
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:15 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id a85sf663058vsd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264614; cv=pass;
        d=google.com; s=arc-20160816;
        b=xfabV5Dg68UP/ythKddIvvklvQWAyDnfYnTo0fUNz4fyM/uDngKqHqIaolyXvQNIAF
         xVxD9h3EPLHGxcHInFUtaE68IBOw+XI50K4Ih0l3m1/sJxwlSN0chM49a4h9oqLo5FDN
         PPOm9xPVpYv2kH7c0wYfDmF+3Ks3hBEE4rBhLsUz1kfSjQyzbdy6+UNEObDfJTIVgD3a
         Yn4+4gDj54ArlsPPlOB1anl9+Gz+AUJBZ+Qy0d2dQDMgaa2Vagyb5+4D8Sn56hQiigVE
         g61cTbGhaGEyI0OUn2jjh+iCUy/m3AdEU9HoeSZa8kGTqndUVZGUmQGSKBlbiP1GjeLN
         JF2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9eQsDzFz9WOr3DXcEAz9o7Ylu34wC43Q17MbTgdhH1M=;
        b=sRjTKqlCAXgYl9vyt4XMR/zWvR9xAu79uWQ172o7FVTnPS69kDFMblwUkf7s6CyXhf
         7CiQHHvQn3prmrZCFBIe+hc1E19B0OLyWchEFBlDNTP6O65u9YA3hGYMfGrQ6vKSgSlg
         mWZwxB6oadjdpH8Jo79Ew2lWX/f4UrbjvBhrRsoFXbQ+YKJhp0m/bq/ibiZ0MmIG9yC/
         7lTsyoIwA0/k71KR2sN6WAp32FzIq561eDpC8JTguYalnv98fxhTMTFoJKEZA+2kN0Mo
         C8K0BtZ425tEJCkdqe1qrqLMnSQzQhx3J0bGUtkou+KnvKXHVLCvt43JLAzJOWGZ9AUz
         W9DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZbNefKqY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9eQsDzFz9WOr3DXcEAz9o7Ylu34wC43Q17MbTgdhH1M=;
        b=RVXQbiHtdUrbNJ296hZsguwVIBY5EWZR9m+yFXNyRcbF4MAnLPWuyvjlFHuPfFZrga
         mAxwZEcpCbjmHRCA+XJ1adQGKuwQuRRqjPSFV8tMUhgaSsfO9ItrqZzJzl91AfLICYaX
         lA/3IkhHvjmYwK0WYTH5sAUANJpti3KT5u9EEKb9fc49hHftbKS9kmRVa6zHM3P8hjlw
         pXfKB3n/3FL4ULdD8HYxmRCOysTBQcgHEgP1FiqVHe2yoSgXXA/I/nPpKnbyGCqvLxbD
         HAMwXpNWjAg/PONZ+7eKIPNUaydxStjlwEKWLKNvJioa8+kfKLawUWsk54Xi5JU5F96g
         qs/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9eQsDzFz9WOr3DXcEAz9o7Ylu34wC43Q17MbTgdhH1M=;
        b=OFjgHNpMcrgbHP2h+4dVs+vLL0y+5+FeGRunyA/FiMCmlFqx4YpAW+wSPf6AdDrQvh
         eHXqma2+mSvOx7eLPDHFCqIYjh9dao8JYtIb4GGA1Y+91xHo6bRkGb6dTORUbipQOn3a
         mm7qyAgUCl5SX6gXO7xp5bnTFqRpWqeq12Pb22aDDW/FgRwb7ntx6elIGTWGiBsAPqMC
         deaqRIekcwMQO8b3IaLoj4qKCnRJ6JSTZKQm2hm6ln9UpZP+/gYr/DY/+x3BcxO2plrY
         5ssmaRXFRQRGUBAZ6s9hgUxi2RaIGlchlF9DdIVjvMDD1JKXOjDWAH9LL4qvZvBa3Hp1
         32vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IU20BAqRmVZabTuFc0wCef/B2oIYjuIlgaTYvd0tG2YMY9jPv
	AJMHrvZVd8mqna/HAXMlCI4=
X-Google-Smtp-Source: ABdhPJzrkGY7ggmicJUqEF7V63Xe3O86GJH+4PQXwo6Y6CnBxd2pWh0iUHKJbJ2IcKRCmLSkr3PxYg==
X-Received: by 2002:ac5:c5b5:: with SMTP id f21mr1064423vkl.13.1611264614486;
        Thu, 21 Jan 2021 13:30:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls310139uad.10.gmail; Thu, 21 Jan
 2021 13:30:14 -0800 (PST)
X-Received: by 2002:ab0:78d:: with SMTP id c13mr1478410uaf.129.1611264614096;
        Thu, 21 Jan 2021 13:30:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264614; cv=none;
        d=google.com; s=arc-20160816;
        b=vZbjBoKQzEI5SYf3bixkBW/FM2/Gsy5MrJRLftLVPEcw01kGW2bpEIsNP8l2F4kZJI
         2ziGZSrn9jjg3iGtFWRA9UBv78G9/pia0egMYtcyxnh1dnIrPYPzLh2YoqknBUKd6wyK
         TqRjgFX4w84VQLTFcm0jVgdFkFORSuj9DSPJy2ls4QThjD6t8oR2Ca8rdU2NPJMuCGgP
         1XhH2T0gdmPgpNRRy4gU0PBrfrhQzzgFEcl1nxNOTBDHIavClvq+xxRLU9TEqF2WYeEs
         B47PKSkm8TLEptb1afm8Gp80DfdZydgYBx3Kmw2+g1MjcPWrqv0IpGs4mYDPLaFNpwQ4
         DKqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=frcc2xgX24Go8tsf7u9fFO21jkTHhq9MVktThtUSJFk=;
        b=pXjCl21weNbMopTVuDvJ/twyiqj2loQyWEPwPXRi9biMKod635lteglUt6FXqQSZB/
         ewa9Nh+9oMhVXaq1MVhjPvhVukeYD/aXINlRCzUG+ggdxoMRWi84XVShTOjXcr7AWOu2
         tYDiyK/ZShJ66p8BqfkzvyGV1crPIdVwI7JGBXph4ekRhocyXmvk0P0TOym5d3MOYInn
         0jFrEhm/MoCpnhcGxsOOu4ttxFwWFJ07iwoEskUsXB8odRZ7Qc2lTzwtFdFLyRdiGaoR
         Av0C9o1WEEPWmg96RwDHFjvKjZUy4IGnXhGMqIOKBvmoSHCRpMdfeAVu/tGzF8ZRlbz/
         qpZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZbNefKqY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id l11si362114vkr.5.2021.01.21.13.30.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:14 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-WlZGomJ-Mwi_hXkLq1DqPg-1; Thu, 21 Jan 2021 16:30:09 -0500
X-MC-Unique: WlZGomJ-Mwi_hXkLq1DqPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31BCA1842140;
	Thu, 21 Jan 2021 21:30:08 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3C25D19C59;
	Thu, 21 Jan 2021 21:30:05 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v2 09/20] objtool: Add xen_start_kernel() to noreturn list
Date: Thu, 21 Jan 2021 15:29:25 -0600
Message-Id: <930deafa89256c60b180442df59a1bbae48f30ab.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZbNefKqY;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

xen_start_kernel() doesn't return.  Annotate it as such so objtool can
follow the code flow.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index f88f20327bf2..5f056ddab4fa 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -160,6 +160,7 @@ static bool __dead_end_function(struct objtool_file *file, struct symbol *func,
 		"machine_real_restart",
 		"rewind_stack_do_exit",
 		"kunit_try_catch_throw",
+		"xen_start_kernel",
 	};
 
 	if (!func)
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/930deafa89256c60b180442df59a1bbae48f30ab.1611263462.git.jpoimboe%40redhat.com.

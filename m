Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVX46WEAMGQEU5KKYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F47A3F0D7F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:40 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id c7-20020aa788070000b029035630a4b35dsf1983891pfo.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322839; cv=pass;
        d=google.com; s=arc-20160816;
        b=rt7paEao0Cjgub1yTx+ksZFfpuCfkMbJ+xgcNR6BEx1UY+sjun/Deqj1vrCt316Q6Q
         +BCBL5jSwwGIAkhyw0rKjN5IBKBQxBUjEGvsURqnBvPO1wj3TqM7D4upc0pfmmLCm8Fb
         jprJ/xzObEJCZ9gHuM8/X5IcT2usFo53615gg90w8Ng+5/UbmLJG07AS4c1zemIcmYL0
         7u8rO8/SnSC1yBoFQOcbeZ9SVCEiXKJYkGkKhK1MA3sVL5HOo79uScC4uOvuqACTKeQ5
         m3lbaaRE9anY0EfQCc++W/OPWsMwVfIkhS4r5cNv7s88YXKo1KQRJ5L88ZUESvUfyGsn
         W+bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vSfRQbJt9D9bEi6QkmPIkVzkjSc6U+iA1SrEvtAgiDo=;
        b=zvqmwfD4Erkk/RkhfHc+flV/ix5YsKU+9bpB0AYr2PuDCtmWV8dLtDMZOONMovqmqs
         qbaxpv4QGqujVl4+1OZRELWWqvIa+vWoO7QAkk15wmCWXraJiP3D+oD4rOf6nnh4ukd+
         Af6ONnY6X67CBXakv1VXcGgsO84t7WzkGpK4whmKcwTJ5C0NZ65XcAaDU2QMwg6NAW3n
         f9609pxY2r2+YDb+4Wa0cI84ATiXEKb008VdzMJyqdx29L+RSaDmYXPLtryqqznpoqEC
         JnQau4WwKer9qg5ldb2oY3xlR+Fpst0n9M+AQ2EbdIKuO/Sj+1rHMfrgJXFhy/XTwgjB
         THPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IVcXEnYG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSfRQbJt9D9bEi6QkmPIkVzkjSc6U+iA1SrEvtAgiDo=;
        b=f5trHq5ew3vsEuLZaypTYdPn4LKIcaprRTvpVUkddIHxnQDn5V4YZcvKZdOWjzONFk
         E1278uLbXHHCj5/hy+DjMmMwxpzKDf/M0+lGi9zXrIcSUQm/HxPBuhqCnt5F5236gE20
         q3AhpR18eewNuXob/gdD5yuSSFdJuF1e6dGGxf1uu5wXLAFjWfOwivJCYRC4OHqqyxo8
         P7Hy7zoIzbSDYdNkr7wzoMnseLWlqkhitpfc9oYZ7p3G4s0dPEi70Z8HxWtd+Gfvms56
         zTmZA0upbr1fRBv6ITwWKAE4eqtTSyhnzDHSQw4XY+eIOC5dkUURoe3maKQSSLesqm1X
         g8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSfRQbJt9D9bEi6QkmPIkVzkjSc6U+iA1SrEvtAgiDo=;
        b=gWZe6M8LnrDFoygwozOIpyHtzk1Ocj0ZhE5fBHO2OnZid3kDxWtD9Fg7eSlAMy5S8J
         b9XtreuwSMZMJZZ9YwYUqIiVo0cDpsZJmnE67WeO4jI2UJzERw/YlQEB7RoHtCAM/Bzv
         2DHKH16W7iu68j3/DPB/EQAzUwTrsdfskcx4wbNh8HcOSC0l0iCqFuNaOwPUaoF/fSkz
         t8zfKoTEcb5ROGvc7PGsDcCGIfC1RMj7BKlPArJjGDzB6sxtVFz+6MchK12Mn+Rtjqtt
         nrTO8/iLLohYnBJGDAtPYg5xGPNCeM8xh636IfT3nlsRH4Nge5kXO63wbDNzHUYisluX
         dc2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PqUpZ7Vl4zYhUKTtlhOW84w9uUm2KptTwVHx2b9I+6s6uqPGq
	SqgiWH1OZaBPDelo+upFw2A=
X-Google-Smtp-Source: ABdhPJy4wtNkE3NJCEPJRhzaLd6s8lVS2JraJWhyjsbJU4/S1ALN0Wdo1PQ16knmk9eP57hL1Ci/EA==
X-Received: by 2002:a65:6813:: with SMTP id l19mr10800157pgt.118.1629322838987;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls1862104pjh.1.gmail; Wed, 18
 Aug 2021 14:40:38 -0700 (PDT)
X-Received: by 2002:a17:90a:7d05:: with SMTP id g5mr11111580pjl.14.1629322838443;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322838; cv=none;
        d=google.com; s=arc-20160816;
        b=qR9ySJUlrorQ8zQ1hGg4BuWwMbU/szPkfPRK/TxQjdMkZ4S6HCDmYpTxGbIxi7ZrpQ
         eIyszCQMW0jZ53Dt8dFKlvhowmL1kAoCE9RunG+vFnXoxPFRv2oGh0grQarKsuLGW940
         UdgBZVgVkUq4KUFJ5sXPmxrrAXSDs+0ncSsQ9kfZL/N6koT1viOG895qouAQXIR0Tj2M
         WZSPh4jzj7g/SuhlwRVVGtrDC7de2zE2MdHOJ3DYP7T8Kj32HnU83spyTAj7/gmZzhYP
         ZFB7GmKK0rfGTapwx2V/RG+uuonyKpCwfZl8upx30knw3i3/TgvXmnG1DGSYR0WwLU8z
         Fxyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=j9DqXIvxCIM/uJCCeVoynzfDym6qm3dtyLAT5E0EvZQ=;
        b=RMPn/8Df3YjXDewu7lM/9zswSVxe2tN9Y4DcK6VtaSVUtjsR1XpfVC7RUT5f8wFOlp
         NHg5e6lJJiQe0NWKr6l8WoY60Ul8u6t7BMrJjp3FTziUXCYf7f7hpdjRhc1jyRRazMbJ
         BJNXCQRZZQ7p7qizLp8mcsi39DGuI7IPxIxt9dwdO75pAXWufIjgwYk/U1T5FwYEV4zL
         IDAFTlBB64EtrYrI3CKgKZMCqe5I3Itv+MRsDbsmBm2Qky+ZA8nF6hfbQV8czRa00k3x
         di3tA+CUmuhdPmMHCuvQRyiP11oobVo05vSqkoPA3qQVrXHXC9Pp0J0zzlvV1OTTcvGY
         9UFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IVcXEnYG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id q10si102865pgv.5.2021.08.18.14.40.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id y23so3732443pgi.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
X-Received: by 2002:aa7:87d1:0:b029:3e0:e44b:6429 with SMTP id i17-20020aa787d10000b02903e0e44b6429mr11485358pfo.81.1629322838217;
        Wed, 18 Aug 2021 14:40:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v20sm846721pgi.39.2021.08.18.14.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 2/7] checkpatch: Add __alloc_size() to known $Attribute
Date: Wed, 18 Aug 2021 14:40:16 -0700
Message-Id: <20210818214021.2476230-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; h=from:subject; bh=6Teat8DBaEMMX6uWXJym8AvRSHRT+DxfYZVALLaAHjA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5DBAWPRR5j7mh8AUY9CepoJIBrtuPXzvvnwNso swpVkhiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+QwAKCRCJcvTf3G3AJh7KD/ 96JnKMQjuQw7QtjrbSbFxElQz16CfGElDpaJ1vmSZyt5B94MVj1bxxm20gR7QAEGbHyBPNyae7HA80 /eGzg2PywQcfB6x4/I0U1vis5JgM8dvYpANANpoi0nYzP/cgkM+ZI7evoAF46FggzG2+O3idTnEgzr DpYQ9H3D3JyEL/TqDbNFh5DgovOyydTKuMWa6ME5T91vVKPrw0ObE03YKzBPehWKbdW+AEzAANor1b cGwSAKuVy32QNt3mPR/IsRkGWSAV0+Kni+8BgmXt/8TTLhxuEAUp5KpQc3061OiwSbbniWGU6TNZTI ajGROJBqm4tAGaBQL2rqL+nMCFm+Hh92wBwgxrJLDur7oiuOii9ZnNgIDx7k+GgFqEYf1HSp0TglqQ M4nuT/MvfO0c/1/F3hGvEQHp4Rp/KOpGTu6z0kJ3RePjPVqMySTot3hJ1JwIIDJha2OlSOXczxBN+E A4P3QaN/sEpO0KRIjbAZeyCCukgg/Ca2QlCCDxETAq2aKCdq6NQJbNwHvTYLJrOqqNAzGBwr++Rt+w 5IqUpM7ekMoEWy10JxkE63eElBxOtaboQ9rYmcAM8Rpg48Y42Dw+WY+QKeIcl/Jwphs5jMUEmACxC1 jYYU0zHh/C+ep7ngW3J3xPyoGZJeNxIzQ1vWRqLiIj4Ua4u/JbSYyCobzvNQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IVcXEnYG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
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

Make sure checkpatch.pl doesn't get confused about finding the
__alloc_size attribute on functions.

Suggested-by: Joe Perches <joe@perches.com>
Cc: Andy Whitcroft <apw@canonical.com>
Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/checkpatch.pl | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index a65753c05a69..e4b0def605c3 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -489,7 +489,8 @@ our $Attribute	= qr{
 			____cacheline_aligned|
 			____cacheline_aligned_in_smp|
 			____cacheline_internodealigned_in_smp|
-			__weak
+			__weak|
+			__alloc_size\s*\(\s*\d+\s*(?:,\s*\d+\s*)?\)
 		  }x;
 our $Modifier;
 our $Inline	= qr{inline|__always_inline|noinline|__inline|__inline__};
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-3-keescook%40chromium.org.

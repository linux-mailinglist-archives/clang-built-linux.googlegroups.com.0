Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB74443XAKGQE6XW5WUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A14D1108028
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 20:54:40 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id b17sf6783843pfb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 11:54:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574538879; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmNyjdCalscMmfQB+bA/E3NVMA9dR+PPE4qRlHgytyYFkUSLI49S6pv5R6aS5lmOoK
         dVDOKvyhh+stfoZD+G9c9N81TEgD6yWxj1kgHy9g9mP/Yzl5ckcDkKq0KzYJe7gPUeh9
         spVdFV4jHHLKhkQ3S4Cngo7WyvpbgwX8GpLvXuRGKkDOSL8luCOuevONj/9AsUDvDp8U
         VgWmC1PCV5i5/F4YbEjnC1+64eXw0C8FlMYvGQ9y22y0HhzZgYugZCwLWAQdprdX3Fyc
         kwpU2T7hEvpoSuBqog95s3pLtMnQdI6acSkULbq1gnYCAGTPn0FBgNn7zNbqX7soJlke
         y8zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Gqwj2XTJxOezyMrj8BiHNRRL0llStfKGuTnB9Z7a1eU=;
        b=G1DwN2nYY5wPARvh4YN15W4wjakmX66kbUhaiLOyfc8xDTkUQ/ATONM2zvqRY9liwJ
         MxMYdXCl9Eq68p2F0ugtaupn44TKNzuycRpfN816qDEMWuk0SoQQ19BCoVeCM/VUwd0s
         kn9BiDxpQu9NDZLfRtjDOB7Ucc5DTjLH4hEJaRYRHnsBo4M4eUygxsaTQobGs6Bm5YJM
         IwYz8r+M5a0QlfdNahUKnfswNzol/NI89uta+BU86RF2IsMl5dSnnlFpVckEpw3Ag+ej
         /mvh41+AMyuLHQvSFEvVlaVF838C99sF2J8a8n/AoyKDn7o0abYvf7tp9tWradkzIui9
         XTCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkJYM5C8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gqwj2XTJxOezyMrj8BiHNRRL0llStfKGuTnB9Z7a1eU=;
        b=i81B5eb9qJ/R0CL8J1FCvSheYUbqUp7uIHAgE5ESchLMNEn4XRFbZ4QRepFeQcUgc+
         az58S1Nby/AkF51CHTA5RqzhmPT/DBCtiuRrseZAFGMSJqxXezbwecKD8kMbyYZtVmgb
         esQBU8TRf9xBhtHk0E11rq3BdBovMHOOaw/JCA/1yJmfh8D1Lq6ev7Y87YtDtrZjIdBJ
         o0UXjxQDKZZlN+DX2wIinmjp8vJ0Os2l7m+0aRjZVH255RfwiM3ltgvzINLOiAKIhy1a
         2Vb3IDT/3VXjxzX2NFPrT19zHBKAfIiFcrSDWBaViT+LezVvBeaXmQNxk1bnvEg/t9r+
         ohTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gqwj2XTJxOezyMrj8BiHNRRL0llStfKGuTnB9Z7a1eU=;
        b=iFf0TPX7U+GGc83CAB7mVJXVhPdDYbzqLBSW6vmzJ/4oaf9+bQJ89UWz4ho5zHnBlj
         j+psA3a3pu8aQOD90gg3xRkTBU4sLrmLXxfYH6G7VN2hIYiZYvwEuw+vFt9CHCBzi1Tv
         scD6G447J/k/4KFyNgCe4MeKU8bnvvb16cOASUwEKeygyIcfUQGrLsiZp+7bzhXS0hz1
         NTv5GKlj+cJb8k/eeRscSSivXLcDEqiOwDIbkF/uTXRebEEeygoc4sukvdlNiNtyI38M
         0nM2Z/9gLkgBaijn3z7ehN/9q9xYe8I/6myFD422nszq8ZU2fkabVNacqBgPfpRLMBs3
         aFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gqwj2XTJxOezyMrj8BiHNRRL0llStfKGuTnB9Z7a1eU=;
        b=YbaI3dpS9EqDyzkCk3VJruJC9APZ/GbPTzI1PkkZdnRMUU5JxTU+nrYrav5B9n28fa
         swTA0+gWgX7ixsw7AJ5nNVvNfj41xL3XTyIbcqLoezloqmSmoampOtjkLn+HsxRNcjmV
         UQ/oO+IEEhGEVI9WwigZEcJBg6lL9zM184DXosd2GBdDdWfM99Sc4ZuuSlfqfPxhOyeZ
         v7R8o9MoB6klkI1Jb9y7c8ivhcDqsNQ5fGlQdpu26i4PoB0BhN9PbNcto6cQd8XBTJs/
         Rzi79WSH6aPqbojbXDMYbS2g4y2VUUrDDtOZ2hF0/RcTJbDsXu2jSMn/ya8fZTMP5I+z
         84pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXO15aysXKgu2I/jkz0rfiTx8GPO43zdUl6i9hkBFRdkTyomZ+S
	C1cmXy1F7sdDBDAQpenemoc=
X-Google-Smtp-Source: APXvYqzzlh/p2BeNmwqN3u9l1ztaueGZ4ODLY4k0GdyyU+NsIfIFQIK9C10svgf4NG+zG0KVj6rzEQ==
X-Received: by 2002:a17:902:d218:: with SMTP id t24mr8750167ply.77.1574538879247;
        Sat, 23 Nov 2019 11:54:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f513:: with SMTP id w19ls2874530pgh.14.gmail; Sat, 23
 Nov 2019 11:54:38 -0800 (PST)
X-Received: by 2002:a63:e60e:: with SMTP id g14mr23087248pgh.80.1574538878792;
        Sat, 23 Nov 2019 11:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574538878; cv=none;
        d=google.com; s=arc-20160816;
        b=sVWnpW0pnnu4iP5GEX+kZigIEiDhb0LvX9GDdTISvHWVasR2W6sbJzK9w2117qXRb4
         Wi8kJ2SBk8NM9iZplAnyQuFrzJN/cfz6Lsc559P7F9vTWul1V4A17iq1X+wYFnhUyaqZ
         U/fx3CJngq/noUugqHJnOTT81tmQN43GGUILAKJXrayM1gr4y5FjYDnhU4g+QS3j4EHV
         x1IBAQyGuc4ESNZpe13P9uGh7Eenh12HXbLcAlExmSHzZUrJrTAu3fHCXYESxjDWEDvu
         YnRMN7R3C/l6Rk73LTDLIaHepcVMyqQ9gAtC3+VbWnoKqNln+/rIO0CpRlpotDno+WyK
         FTsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eBi2Kl2b0LYogSQpnyXzwnLfzkWlslGs6DkAiJ/ff28=;
        b=YQrzrgUyzfSVGffDrG3jT3BdgJGfBA3a5LyTrkgnDiXEpSjMVI2YlT6JDNVs35w/Vq
         4/yG7AfgGptbcZPHI4cZe7Ctww2LacyN2UIxOg79k0Y1PWF6yObBL7SaPbpHvxELHJi3
         KbFXsuL1x4l+MGHBCafymBokUmVodLlpxOG/2+1bSHEozUbCI7UC04iWEiKjyjqguO+B
         aZUcP2A15fQOj1L9h91I/FDW+6G3llnE7VP1i29ecIpZBlVBgwj0K2LA81QlcvK/+3dn
         YvGTGqftv/WG+S+VVQ5THfIJ+oVwiQe5AaiM6Jn9ovlP3vB+fWgpJJAEyu/6mrg2h/Mp
         hZGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkJYM5C8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x1si77800plo.0.2019.11.23.11.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Nov 2019 11:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 23so7427201otf.2
        for <clang-built-linux@googlegroups.com>; Sat, 23 Nov 2019 11:54:38 -0800 (PST)
X-Received: by 2002:a9d:734a:: with SMTP id l10mr15424321otk.339.1574538877966;
        Sat, 23 Nov 2019 11:54:37 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id t11sm577254otq.18.2019.11.23.11.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2019 11:54:37 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
Date: Sat, 23 Nov 2019 12:53:22 -0700
Message-Id: <20191123195321.41305-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YkJYM5C8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

-Wtautological-compare was recently added to -Wall in LLVM, which
exposed an if statement in i915 that is always false:

../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
result of comparison of constant 576460752303423487 with expression of
type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (unlikely(remain > N_RELOC(ULONG_MAX)))
            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~

Since remain is an unsigned int, it can never be larger than UINT_MAX,
which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
Remove this statement to fix the warning.

Fixes: 2889caa92321 ("drm/i915: Eliminate lots of iterations over the execobjects array")
Link: https://github.com/ClangBuiltLinux/linux/issues/778
Link: https://github.com/llvm/llvm-project/commit/9740f9f0b6e5d7d5104027aee7edc9c5202dd052
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

NOTE: Another possible fix for this is to change ULONG_MAX to UINT_MAX
      but I am not sure that is what was intended by this check. I'm
      happy to respin if that is the case.

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f0998f1225af..9ed4379b4bc8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1482,8 +1482,6 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
 
 	urelocs = u64_to_user_ptr(entry->relocs_ptr);
 	remain = entry->relocation_count;
-	if (unlikely(remain > N_RELOC(ULONG_MAX)))
-		return -EINVAL;
 
 	/*
 	 * We must check that the entire relocation array is safe
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191123195321.41305-1-natechancellor%40gmail.com.

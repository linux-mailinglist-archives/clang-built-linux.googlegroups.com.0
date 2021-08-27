Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHVGUSEQMGQE2WVVIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B65423F9C71
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:30:23 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id g25-20020a67d499000000b002c346734969sf1396092vsj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:30:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081822; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtP45aJHd2IoHVx3bfQ9P/M2pgk1JzMqgjJsHS5FXnFbAcKwpnIXTlqXeB+d+38mZ2
         Z3MkUIyXKMu1KnI5aNKP4m6uodmCKx/okdpqBeLCJqmV2joLAQ1OlP04WfD1M0pU5iQ8
         1akWtGZDWnxd00mIT2arLlGOOf2DadNJmxUUIRr31nyrY5IZPspn169m9A8KR1+B8kVk
         kdoZY136k/F6njp5hn2eIi1aoGBR/f1994HyCJx7hPgHrZErun5QoFwvFFUNPfmDJoXJ
         zveK/kruij9R9YDeI+HBPIALrL4OUmIMT3dXOrP+qALJBGHKeOg/ANyeInaYe7bH+53A
         H9fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EWcNNHWfGvAsUfGNCbhmJDTjkuEEgH22MhrKWnvXPGI=;
        b=xeouasIa51WuZnE1pmoEjj+NHO8LNKI1lXRMc9lt2XcCxwk0TmU4nDAAcSfrMI+iPy
         amwILWOuakH7YOQ6BINh7x4V9+TpTPjepkwjkVhl+BPlpFMSKeB3uzCJmBLO2dpVARUL
         1pkGjLlkrOGIVZjlAtwgrT0HffTFnaOpgt40Eh3W/+9LdiLo1K2iPsVh96BuvDcxIajt
         JV6RXRRMRpc3tY9kiXvAtgUgkSLTg6YDXQ78x5IypMlt8sNKIstsOJK6Ak/yOVOXMwdn
         E4cILPAS/Xp3QxF59KAQ0j0aWUHKcmmP+yJFbqWCmnvyWkPJRBatsPytW92x8cSNCLUL
         jkWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e+LKzFlk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWcNNHWfGvAsUfGNCbhmJDTjkuEEgH22MhrKWnvXPGI=;
        b=QrzezLFQmRHqJhm4sWQZMRVc88rYKNmby6PS2PQ7bY5oL79jhcMtgMo66ujzTMP+up
         ayPxQJRHV7HHse0juvd4G5KNhvd083bRLsfbMvpuOncJgl1pnWmLH1/VYVNztpWIC5tr
         wzS6xz1EK/Z2qoKNdlZTC/up0eK1PMSR7WrGISkKjMjaaZbPVes3UR6M8SlB64aX7MCj
         BB760gChSnL/+5ewyY5RiI6lItpyQIWiN65eYS54mdleBhP3Pw0Y/vOrwdH9s+jYA0Mx
         DWXMDWDjXGmOkX3YH/VF1kdG6q/eehE1ICRJG2YQEyO8vP4GXPKrqFBkcPs462El4d/u
         mJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWcNNHWfGvAsUfGNCbhmJDTjkuEEgH22MhrKWnvXPGI=;
        b=N31/izj/bsBicSMNeyg4H7v0GO5psnEWUj4WvoaX802GpzLKeLUeD/57e+abj4ct89
         RQxYawbQ552LgUNndCOtAC2KyADKWK+33w69lSKmWUnHX8obktpDmqoEjIM6Ma3WtLrI
         xX1WYTiEJQrmxs+XEKlDYVl2t36FbeTzXYB0IyEOHnhTCaQ6P0tQThdwhEzZYr6Gydsp
         bdwz75eUgMRn3lZgVqLJLLmTjT6gvcvjh27rbgseXGAvvFZ117tz5n8V7qRRkcYVoWY9
         /CADo25ajQmROCrtiE0J8ixNux7BO9GSQGroDc1Eotr0jcS1r0eRWDnouyYlSNHpGxi0
         IxGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nrtD1RBRXmjm+oKD73imBvLYBf+zmGle4yl8ZB7rxgkw50UJL
	VWURrRX3wlkZb5t+pn4mswY=
X-Google-Smtp-Source: ABdhPJwUdmtArDOI1DcXWX1GEOdmEYYDW7P2GHWnmrUTyIHoBx7fop4akynWWxRT2bZkPeVGee+35A==
X-Received: by 2002:a67:31c6:: with SMTP id x189mr7923306vsx.52.1630081822548;
        Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2401:: with SMTP id f1ls1098604uan.9.gmail; Fri, 27 Aug
 2021 09:30:22 -0700 (PDT)
X-Received: by 2002:ab0:7581:: with SMTP id q1mr7624866uap.63.1630081822098;
        Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081822; cv=none;
        d=google.com; s=arc-20160816;
        b=YrfUKzkZzVtVpg9ZjuHgkFedDuqBuv6sQKY1VBtS8aaCWLsICYsuTvGM7G/USBXGCR
         CfjM6tD896fg7xf9W4L9elHDe0nFjB+Jo2/iilHl/90AmQCUV+YGVrd7UmLPNMKgE9oT
         MOYBYO5t2+yfpkzsJnpx55rVrsmpXIMnfutXfULKjZGsrO1HnUi0mRtk/PvtE6g3qmg3
         lJrwk9mVidUQdTG/t2MVKpS0TJxwtJMRhGQnNKfWQwMq68guNvrLf4T2c640rIvUG1zt
         hxMAUTSGoaBK9TkWhF7H4iHAsRFkaKQ5Tccue0PbBVWuhOrlhF9f6XgZLcwPG545UxXD
         /S1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=H+ke82JqnNzuF+ETLARNzezEA9Zqm2D4YO8akYC5ijQ=;
        b=jSfpXBmSbaYl17On3nHoHdv+5sJciubC796h2sSVBXbkX/mfevJUjeZDzFxK+tCpPp
         NE1/IzlN7RMpZcUXdRQdiIV75aH7ql7EsKTDd66aLt3zCNLLsuygVzOTwHOU9IT7WZfW
         dlzeFopcle7DYNsPPwX44yEyWwtBwJxbpm7RaK1vpAzEbWtIzjQNbzeT3o9QkJqTAnJq
         6Ewf73+7BULnlWy465i1OxMylyaqap4PYwKd4NMu4cU7hyxYd2kboBWUGoNOXpgA/OIc
         dtLrqXf0SJkPk9SKnJrP4vdBe9g0cQW3QKPtyjy9vcgsIJfE6Gbk/hXOrYnq2guEy9BZ
         Xojg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e+LKzFlk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id m15si478127uab.1.2021.08.27.09.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id x4so6426328pgh.1
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
X-Received: by 2002:a62:6143:0:b029:3c9:3117:c620 with SMTP id v64-20020a6261430000b02903c93117c620mr9956209pfb.30.1630081821279;
        Fri, 27 Aug 2021 09:30:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q13sm13041500pjq.10.2021.08.27.09.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:30:18 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
Date: Fri, 27 Aug 2021 09:30:14 -0700
Message-Id: <20210827163015.3141722-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210827163015.3141722-1-keescook@chromium.org>
References: <20210827163015.3141722-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1113; h=from:subject; bh=oefMcHZzjrqvoOMjUB7suXN8EJKiDU2oIYgtW+uUBtg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhKRMXaFIio04DmLvoRaIim4FnyDX46vN/W1R6TAc9 7X8LHOKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSkTFwAKCRCJcvTf3G3AJkHDEA CS1lNg3ppEL752ZcERsA8g+c+eYjHTxh15ZTmzUnEtLj6BwMfdbA4/x1xXrjYx1Bg3dJBsGFGhhpQt ozHruyY7Oo7N981nkjQ17v62G45VttSUW0Da9NH4LAmLVzsxHD0eNX4PVE5ZDbGbbH6eE5CrpdTzRJ iNUg4Bto8WHejlPUM/iWswUDI35C38Ckinp80US2/WBXEd2+4PmvnF2qkZGkmZ65WqzLdDZRh3LGu2 HBBxun0qKGvwYwui7oSaKwzCgWZKOkedPVBzfLc3xYcVrLu5swuJmTPLb7YT5WXPH2HdZI7FYqB/Py PjJtQhMrIn2yB8i83VdeCbOZ1IV70o6Eo7mSwFigYSWvtQnG3RZroi9sq1Agy027oHBW07Rvv/umF1 JhVtAHQtTEGjfr3kW89UTaY4HfFsD1JF4oi+CR12uO9+ci9R0DYPRkBFqjL2Y27danaiOyoY2u7yTx mZ6JPA0BHivZtZe/u+uSimSgojZF3B50suFMGmwa7kF/oonGQDz6IrnMy3twHYH7wzin56Vaj8oVVw B+4BrvUOeXYtj8To2ctra/tgAK26O/YGcMht6SuqX/ErTpO7QbpHL2fFyYf1kbmbIJc6vgwVesrVHg iqwNiKHwsWkpf7q4OjGMI+O6JX7fdDBcHhG2QRelqvzBoga7Vkav4a26D+iw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e+LKzFlk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529
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

With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
coverage, it is now possible to enable -Warray-bounds. Since both
GCC and Clang include -Warray-bounds in -Wall, we just need to stop
disabling it.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org
Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index e4f5895badb5..8e7e73a642e2 100644
--- a/Makefile
+++ b/Makefile
@@ -995,7 +995,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
 KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
-KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827163015.3141722-5-keescook%40chromium.org.

Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBU7U32EAMGQEO4D3ZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 031603EC2A8
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 14:42:59 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id b25-20020a05640202d9b02903be7281a80csf6229022edx.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 05:42:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628944979; cv=pass;
        d=google.com; s=arc-20160816;
        b=QomJ3gihtBie1KMf5+y8ZkhPAgGCEgCxbPcBuGdpr8SGNdU5zfzF4Ilu7Nrpd1ftxh
         i3v3KxHgTt5bsYUQiV/zbQ8W1U5//2lbTzT2ns7pS2ZyB4EsRa2LdOSpT1cBD2vXpyb2
         M5Bx+plJ4UTG4RkzVp1O42bor7KhKE9rneVkCnl/uwdurGSdw8TALDDS2ioWDyFn4Bcc
         xABUG7aRxJKatUuZ0GdXzNPHR9psKwcCDGH4gwDLnNgCccfzuP3VZLNciwza89zZ9hQ2
         XJxx6eEwHBUZT2cINjptc8azNSqEWfgd/LuTQbenbQnTuwn7LdLwH8PT7pB97pVGHlBM
         B0GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XW4nan/dYolg4/MpwlDgR7aZdO5ViRB9jWF2w0I1j9c=;
        b=Z+ejGxYxJzU+TOBieiVZA+n+Mv3jZL0Fa8MXA63HS6zFPzV0uU5Fuuxz8FXk2TjmOU
         LDBAe/uGNnmY74cSDwEQs27esKAmhoZnKGSJcj3C+F+6P0DAglieDsxZz7e6GcHCcOJb
         RMHhyfbMKw++jS6XyGiLNnFFAv8mBtIYyiQXZL7wXF6kpzuzJOQegi6Cf6chAeE8n6D8
         uL8DF6S40eFXhW/Mgq3hlSjWiWB5+zioj/4So3sYz/foq65HdkAwP4xn38+PdTbG2bs3
         pq7mY5RIui9jaolfCKokP2wSz5PHm+ErZe4iKao/CUQnU/4iXkZDFV/tGLO5mtuNrXMx
         Fy8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t7/jwf0z";
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XW4nan/dYolg4/MpwlDgR7aZdO5ViRB9jWF2w0I1j9c=;
        b=oJ5oErV9y0/NFokMno0PQqw6SGzd1F0GrHWJpAeWd5k2rVKAG0XaBLd40Ba5SCX8U1
         nSJoQr60hoKucKaoF7rFFnti/SlVC3QU0F9S7JbHh5VLUzqIEdTWDEmSra0eLkAdEfSQ
         /K89iPcgZBwUZolEtTFCV1IiOjepQE3xTBiIqIq7eLHdiyIsrgSsrWKjpxdyYRZEs6HV
         SrzSmkKOUwk6PFIKYdkZWdEOI+BgYmXQW4WZGP9LS+TAa2hkLcnTBiGXHSg1ZWZdzf58
         QC2Vnkd9Hpq+xDqRN93BR/5qK5AiXg5X9wl6zvFVT0ljTCqICbMFVA92ZYCzspkadnhf
         AkVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XW4nan/dYolg4/MpwlDgR7aZdO5ViRB9jWF2w0I1j9c=;
        b=Tau4xfYn2AI6PyotcYGtKbvbob72VzS8ioKIVvHQe856C9Kgs26s4uEnxD3g4g/qtG
         Z6bD5qy1L4nHLhy2DGEI+18mTHQ0pE9LmZs3P2xLwkmfgrIYz30/8R8A/sdMKc3ruP9N
         jJwK9tkEd16hCZ4h17gyXovdPfLVcIAM2YMTlkrI1salGLm7P6qyzY7hXy1HDBTa58xU
         xIhlqCzIsI8Wry5rw3yumZp5MnaOGVdzJnrleV1suQJ2HbiR0hKdYL9Sospp67ASOTgc
         VgLdACgUhK+hmkpbt0eK1YOCGYxZuqlNPh/j90ktG3FVf0t0y7ZV9QdKu/aQsB+wmzX8
         OF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XW4nan/dYolg4/MpwlDgR7aZdO5ViRB9jWF2w0I1j9c=;
        b=M3zHyfag7l5DEKFZtE07aGL76l13L1odMO0XCjhp+ov8Snqs1qZAaMYCI3v+YYigMs
         B8/LV2+TjWDJmr9hLj75j5aElwFNzYiCygpFB2wsvZ9B+D1SXmJZ0wlXMcB9ihdMg/B2
         S0GqJLJvuMMdmiwZC+4bBGmOvJO2r78JroTa5lctaHOxIoXpKe7WlWpRoHZjYeX+PK0f
         Sxh3ebTnxxQceQPbF+reWyEDZKt3NJIk4b+qjQOvKFJFOz1IubkPd2Z9b/UKnB9l4PwD
         2eOjBkRHxkWIu9kXiyy5LOUoZU7L36cWPjByJxnyPfQt62n+wfZGjf/BDD08aUDhIzao
         rX/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qw+FAVp2fw7pscEaZzfRthRvZwBloH76jIdR9LCRexGPWg/Mr
	SiBYb5K53seUXCVY5lfGYUE=
X-Google-Smtp-Source: ABdhPJw2WqGaUzgHo/LghiLjba+QRaNm8C2LrTn0ZJh45lDOAxjitCD6g1J58MPMLOIv64BTU2RuNw==
X-Received: by 2002:a17:906:4890:: with SMTP id v16mr7103595ejq.42.1628944979685;
        Sat, 14 Aug 2021 05:42:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d96b:: with SMTP id rp11ls1846880ejb.0.gmail; Sat,
 14 Aug 2021 05:42:58 -0700 (PDT)
X-Received: by 2002:a17:906:8493:: with SMTP id m19mr7215906ejx.103.1628944978785;
        Sat, 14 Aug 2021 05:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628944978; cv=none;
        d=google.com; s=arc-20160816;
        b=raAQiB5Rlesn5BrKMIcmoInCUhwIBIGVjAzxH/KMuheQWFZjUUQOBQy2XlVmTEa7R2
         yqSE53caWTr3Ye9Zf1ZVveEabU41hqT6oSGwBBvCrJB2XNSlSqqbWbalpKwTZfT3jiPC
         udmSgvYagtjaPdFucByHESgpsya5QmySLKaKbgoolu49D8/ttSO3KjN3tCToI5no64gj
         wVji95cT/8QSgW48u6Dte1av2k98OkU+JUyZs5FCl5M8JmZu4q4iXExunMfbjg2HJ+g2
         eZ0s47i+oWwGa9z1r2ox8ful8jqK3p+V/QTAj22iyDI+nNT0KKCRs+AjFKPEDnLrWMbC
         nZJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=A3zBG3rR+R25Si1zQzd3YIu1279pPhec/mpvO3yWcnY=;
        b=HkGeO4b4IKLLDyPO4K7AUEIFZVoIqS3Om3JPKbZdPr6ExgOyfSGnYcoQU8awb3u+uN
         wbOXizqJ4XLXbqduULfdjQmtpnHyvLHJsy3zDEW2/FCXv6Y0fJzQeDAgfKzVA0v7iVXE
         XaBcojZhYqMTBRYEVux9F6l2DsICUIUuSR7E6qHlX8pMByNz1AgQ6uHse+I1H2rvJQKp
         IHeeHCmh7XmNqQcobZe1iO4C/u1QaSVzE6jJ56r6rG5bKDFbh4IaaAIS0Xsi2tKsrqAi
         SbmgtSiE5ThRsgyBuuRoku6/Yz3gO/jBDsZOu5WmJ63DaKqtP/aaSR/BcJ+UTUrzj9qr
         Tfaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t7/jwf0z";
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id h12si224536ede.2.2021.08.14.05.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 05:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id f12-20020a05600c4e8c00b002e6bdd6ffe2so5769784wmq.5
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 05:42:58 -0700 (PDT)
X-Received: by 2002:a7b:c005:: with SMTP id c5mr7004614wmb.59.1628944978437;
        Sat, 14 Aug 2021 05:42:58 -0700 (PDT)
Received: from pswork.fritz.box (187-64-142-46.pool.kielnet.net. [46.142.64.187])
        by smtp.gmail.com with ESMTPSA id q3sm4030100wmf.37.2021.08.14.05.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 05:42:57 -0700 (PDT)
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: jeyu@kernel.org,
	keescook@chromium.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	samitolvanen@google.com
Cc: treasure4paddy@gmail.com,
	Miroslav Benes <mbenes@suse.cz>,
	Stephen Boyd <swboyd@chromium.org>,
	Joe Perches <joe@perches.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v5] kallsyms: strip CLANG CFI postfix ".cfi_jt"
Date: Sat, 14 Aug 2021 14:42:19 +0200
Message-Id: <20210814124224.8551-1-treasure4paddy@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
References: <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="t7/jwf0z";       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
For e.g. this breaks syscall tracer that doesn't expect such postfix,
so strip out the postfix from the expanded symbol.

Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
---
Change in v5:
  - Also remove explcit config check for postfix ".llvm." as LLVM
    renames even in full LTO case

Change in v4:
  - Remove redundant check; irrespective of LTO type (THIN/FULL),
    LTO_CLANG will be always enabled. Hence will be used as entry flag
    to check various postfix patterns.
  - And prior to stripping postfix ".cfi_jt", added a comment to
    justify why we are doing so.
 
Change in v3:
  - Modified commit message to indicate fix is for Clang CFI postfix
  - Rebased on recent patch from ndesaulniers@google.com.
    https://lore.kernel.org/lkml/
	20210707181814.365496-1-ndesaulniers@google.com/#t
  - Fix is enabled even for CONFIG_LTO_CLANG

Change in v2:
  - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
    extern function name.
  - Modified the commit message accordingly

 kernel/kallsyms.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 5cabe4dd3ff4..c8ef618e2a71 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -174,7 +174,7 @@ static bool cleanup_symbol_name(char *s)
 	 * foo.llvm.974640843467629774. This can break hooking of static
 	 * functions with kprobes.
 	 */
-	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
+	if (!IS_ENABLED(CONFIG_LTO_CLANG))
 		return false;
 
 	res = strstr(s, ".llvm.");
@@ -194,6 +194,17 @@ static bool cleanup_symbol_name(char *s)
 		return false;
 
 	res = strrchr(s, '$');
+	if (!res) {
+		/*
+		 * In case of non static function symbol <funcsym>,
+		 * the local jump table will have entry as <funcsym>.cfi_jt.
+		 *
+		 * Such expansion breaks some built-in components,
+		 * e.g. syscall tracer. Hence remove postfix ".cfi_jt".
+		 */
+		res = strstr(s, ".cfi_jt");
+	}
+
 	if (res) {
 		*res = '\0';
 		return true;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814124224.8551-1-treasure4paddy%40gmail.com.

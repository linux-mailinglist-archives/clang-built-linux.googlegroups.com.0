Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWV24HZAKGQEWELUOMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0A172D00
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:51 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id n12sf1131853qvp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849370; cv=pass;
        d=google.com; s=arc-20160816;
        b=K9zLJemYGgfeJLevUOMscRSUqJgDuQuGTZHyfZlJVNW+oxkA0fzVT28iO1zQ6ARepI
         gPaQ6MU3UekyUISyeY1Bp6TpzgQNqKxUgqrcxeWrRWEyPsEcBgfPkxaz6K8lrasPXKgb
         NyR+OQ8Braoc+vGzvFYdIKeXYIgiINF3GtIst1Clz/cE4MyX7XK77buwQnokD/5XWslk
         rRviXV3BFNz63QIHL1bTL5+oYTwdUSsThkNdggVBt0kY9LwsK07/+WpUxEnh/QXTGhAX
         6DI1LRvgdJfMwfNUgYF07VHZ5hq1zdMpdV6wH0kDdBgyMypd5F7JXeuxTILp5Z0XJkVu
         eSfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sEwKUle8sMllWrk1knQwyUu3FZwJ2H01LlOVPFflhkk=;
        b=VX9hzoWmIScxarqJaiXVMYYqF5Yhvo0GuyOTmBVUE1USroQQv7BXRBS1fSOzw7MrYB
         WH01Q3i4QEn4YKxMf/XJz/nOs/sh8tCEHE54WqBIZkX93pJjgkQXNW2nICqY7G99ST5A
         z45oi5gdnM/38+ykgFqtuVes5wzY7tql8IviMFDzLPSdnigIlMFZgUlu9NiAjVZ90j21
         AT94iSRKPynicOrV6eWNcUg7t/VnGsuBR8u3S4sJp84NPhOFGjfzLRzzStrQKzKVDOhL
         pU36NjCGpbZrLIw8b0ztR7J/1ol+HchHjmnrfprd3/RmyZLnmn0P1QGEGkhRa8YbMQfA
         I1MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JT0Br7NK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sEwKUle8sMllWrk1knQwyUu3FZwJ2H01LlOVPFflhkk=;
        b=bH3zZNmr2OC46oxLszp87J+zkvAQexLrmYPPkFoi42b5vWZyvKqba5rTKGTZghBZjM
         5uKu68DuyXkkt3AlYrrHzVuyCq6CndkowifKWvCPa5KieWD0RQd/JfrGbLWOtFR23rYp
         uOftxOHhvHiDSIOmfFFmIUNhksx4CU1AsDraOkUyFhqtqAFDrNp/roEawAGZWLeE/KGU
         gqXL39/1wjDF9G4Qpkye/uOmJqYmix7uzG6C1zHPGnnfuENgVgPrzPiwT9pliMs1sOn6
         0NH34FyF2t5gXEQ2jD00wQzvl5LQF9eoOSnst5DDU3jx+t8gPZIqmHc2a3d+QVNNsWG7
         SuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sEwKUle8sMllWrk1knQwyUu3FZwJ2H01LlOVPFflhkk=;
        b=dGKR5vCmCqXke/fe6fTvnelR4Uk0G6bUH1yAY4x+Hvm7rkbGPSca/2apxI27QdL94A
         YSlSaAIyDQXl0BQZBw3SUo1eqeukHmk36c+iZtqlOOOMijmLbOQsZY94lOkQsl5bDgUd
         0W9VH/48v59qGwEvisZh65rfPe/GiUzBd6DPNxi/RfGQuCblJcudga1t7pm3CLho4PM7
         bBrEOnOBHbhWRwimkpe0ixiGfWZM+ch28AG0YuhvFEwBjOH49p5x1MwDKfMy6u7d4BTz
         pykd/Fv1TPD2skpRyLbTQlZp4p/JydsRJIkdQYyQISJG37KeZEosBR4Zs/5aVt2nBDPG
         Tf6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVxtiMK5xrSs0kG2m9wdjnwH9Rmen423hbBb/zFT+rSjcEYmsF1
	zGLBNXN96m+Z2YVujeDNbNw=
X-Google-Smtp-Source: APXvYqyWIv0Ss65BjbiuTO3s2PMbFK9y7ijC9bCWi5cSmbFqNHw6eWjL8sklOfEgPWyZkhDflHOQ8Q==
X-Received: by 2002:a05:620a:1521:: with SMTP id n1mr2092936qkk.380.1582849370814;
        Thu, 27 Feb 2020 16:22:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3405:: with SMTP id u5ls389189qtb.11.gmail; Thu, 27 Feb
 2020 16:22:50 -0800 (PST)
X-Received: by 2002:ac8:3aa2:: with SMTP id x31mr2128049qte.140.1582849370471;
        Thu, 27 Feb 2020 16:22:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849370; cv=none;
        d=google.com; s=arc-20160816;
        b=X0Hu2/Y/jrllpPClqVbQJJx4/IkW3HzbyzP3BRYtrClvBJ1V5NZQJblkUN+qRGC9dX
         /MfohbSagJs+EVyf25SNN5Yq2YcYARl8ZSxzti/2Lr7OdIePPFP8SbdB/dPu8lb3ejCj
         zKXlpUUAfMZU68dncUIUza8+KN2AZRXi/e4+CSSePZLtrtUnJju9BtfAPc9kbSgxSRWq
         i3TBNIVT1MrYQDwKwg9I7qvvfnBshMAOAzIW41apw0JJv9Gm9T3GoGe9m66jNAODlDbC
         FaWrcsYvRZc9tF+k6Af47GwaQNuFdPWBNbDZzjb2D34SxgnbpkFZUv493mGzU4j8feMN
         JdaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ez79u0H95d7ehsU8Q6LXSGZw/ZiYxtURwwXuqb7McBM=;
        b=nCeUXinvkLvmqE9tJg8sUIq7PQRPw9cX77190p0taWUNvA8XXXTZkQI77sd85SJIUI
         ezel+K76Kf8nWFvY8gYuQAQt+aEgX0IeCIgkFY8loqJ4cfmbaMAaxOJcMfb0dtjMmpy9
         bpeGLzCN0NJMXd+ce56aiKcwTK4rEgIfojgJ0Dc4suKWyyar6OClP6szgvugoE3teE4M
         bylLx9cIg8BglJcayQNhE1Z/EnquFHqLaQJjxGFR3b+ov9gPgwH2rb0Kba2y88QJNwxH
         bNJ8yQGJGPSnmnAZBDq1clB74PvquXq+GeEv+Ze6m/j4BTxwcKgQ1NuwD8eS6ViWYR2Y
         +y9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JT0Br7NK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id q6si52332qte.4.2020.02.27.16.22.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:50 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m13so506051pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:50 -0800 (PST)
X-Received: by 2002:a17:90a:be03:: with SMTP id a3mr1544230pjs.99.1582849369865;
        Thu, 27 Feb 2020 16:22:49 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 196sm8572448pfy.86.2020.02.27.16.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling warnings until final link
Date: Thu, 27 Feb 2020 16:22:36 -0800
Message-Id: <20200228002244.15240-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JT0Br7NK;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
to detect when there are unexpected sections getting added to the kernel
image. There is no need to report these warnings more than once, so it
can be removed until the final link stage.

This helps pave the way for other architectures to enable this, with the
end goal of enabling this warning by default for vmlinux for all
architectures.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 1919c311c149..416968fea685 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -255,6 +255,11 @@ info GEN modules.builtin
 tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
 	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
 
+
+# Do not warn about orphan sections until the final link stage.
+saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
+LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
+
 btf_vmlinux_bin_o=""
 if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
 	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
@@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
 	fi
 fi
 
+LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
 vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
 
 if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-2-keescook%40chromium.org.

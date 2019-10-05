Return-Path: <clang-built-linux+bncBDY3NC743AGBBB4S4PWAKGQEGAK222A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B63DECCB6B
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 18:47:04 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id o141sf7380556yba.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 09:47:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570294023; cv=pass;
        d=google.com; s=arc-20160816;
        b=ka+bzb6QwHN4YBfZva5OU/NVd8HFyBQBiZIq1ZeLQdfr8yH+29xZWLgStXToRQUTQf
         kGSmx5gLg7gctzaLORgxSwxVol/7ZRpNBtHAEcRyRKOUx5xtz5x5gmHtb7uI4f1I35RV
         VUCDX9V1N0RNt06d507W6DOgAT+wRMjzkjyA/ux5i2tOccTRXkQt4z/hTmmdwNvWalu0
         +XO3GJo1XP2ioa4ZnVpj5GNznZwdeBcbFvP9sEhnJYZ6uz/LktEFwy2MAnDzsiPOcD2M
         /RHu1nWW6h12ZU3vn0E3IiJsaU24jfoJB9DR9bqUrFpHpq4L1MOjFjqbt9Z7INR9Ux2V
         zS9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=GgeJ85sQQTqZKdGxXKCbUx7wFKlZTxSlEwl7CVLHbPw=;
        b=kvEAmomB8ORfSKkhKJvg/xyUdB33y3+mUcEG+UXosMiWptQkJCzDMAPmUFAbUH2Mcd
         bqVec6i0J8PnuDoKVRPPzkkkZi6zhTr3dvNMAz9GqfzywFwmpduBN7LVXV394Fv2ziSL
         iV1fLhjVc6PiNnKGuE4/hpSZg3hWCh8kIHlfbVefVxh+K8KNSNnrObajMxyZslP1JHk5
         NEjeYIoJQbvDwO3pXBq29ZfBo+7Loda1+LqFa36u4KYFXjfrzBDgNgT4DjqbSntVQnjY
         2CWdemH8uKXycXWw8+xJkHSVvWn+TV5y95pif4GJ7hwslCXdJ2S+zxXTgKHZsLD5iPvO
         m0wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.174 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgeJ85sQQTqZKdGxXKCbUx7wFKlZTxSlEwl7CVLHbPw=;
        b=ZhLDsCpwPgCSeNtCYd2SBuBSYVYla2NNea4Mgou5iXC1F4fZLHarXukp8qC7YXi3gm
         On3h2zsQcYbktncu89oCwOWMYUDMC+V7rU5cAloVIXh6x3TF/wVsTeWhlGF0bDEQ6C6P
         2048rc86xEyORFm/kF7piojvNjise2rg7OYyq22zTdCJtwZ6QOxywptI+8smiP1345Q7
         mXaWKV7OCBOSza0WpTR9sEcpVzRN4ojRwoJ8yFfBQ0AXRsckTpJdFIbtL52DOXitMyMo
         BUvdC0A9pH9At4LYXS3kF3Ty3rgldaE9jdBpfvKrEpz8XFCS4FXiFw0+0zdaaL8Al0EJ
         mvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgeJ85sQQTqZKdGxXKCbUx7wFKlZTxSlEwl7CVLHbPw=;
        b=ltIIXg4yOzIHf1Oir4nB1L90Jjb/WEmKkPmb+cARqnJlkhlArYVhZr2xSY3Sb1GRX9
         L2yXrcCGlZReo2X0IhD6ssILJEh/TSKSNhxMWcBmr9PNUZJ8ztsxphcnveL9l9zCcD1m
         QxY+5UNH0y8QaBHjQzGuvH/usTgYFQV6thg48gm3yLBhiBX/LCQNe/v6WW/ezrg+myVv
         Rtt4pUICjdt8UpmCN1RcE4VR0DnBUT/N4A3REMCXwna4D5iB0R3Wg+igRgFz1PtLQbcZ
         9ByfxG3n2TtDWXhfgTccHeL+0gBs4w0zspmcIKK+rEBc282iHsClxCcYejXgOVr9/Gu3
         deuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX6fVfIc3qUCEXAraolytjzzKPKBiePR9/r1/AB4CLA2fYgPUH6
	f18Pnp/BtLFtcVeLErACBdY=
X-Google-Smtp-Source: APXvYqxt/cebtwCSUuByp/f6vW3LEQ+xZGLd8Qdu37/cSEjQ2Vj29m2YXrk2QnAEleKh0J4tNjxJEg==
X-Received: by 2002:a81:81c4:: with SMTP id r187mr14976385ywf.35.1570294023501;
        Sat, 05 Oct 2019 09:47:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4303:: with SMTP id q3ls1759653ywa.1.gmail; Sat, 05 Oct
 2019 09:47:03 -0700 (PDT)
X-Received: by 2002:a81:c314:: with SMTP id r20mr15289506ywk.132.1570294023188;
        Sat, 05 Oct 2019 09:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570294023; cv=none;
        d=google.com; s=arc-20160816;
        b=CnS+hxmKJXfjLOGFx1BYQZKagYj1lLSpfb6N27h49p/dhZCY7FFDUifJTk286ArV9u
         KlWyYSI4vUkRjNMJlPsC1HdXrBE5zWlt9QbHFwPHhj3huV8nH9o5xuIzAc0KCssrDm6O
         D1PWQGaAplRW2VqyNBsjhYSZuTAdCRKQH8Xm45X6BGE33ICd88zxA4REsl62CTypDW8+
         53BLXd/2lxWAtHeiNLc7GfQMvmCDZcnW22tSU4+y0Mh17E5l6N12EvzFWbDm+X6OvJXn
         T3iIbxpZ8JmbDvYUmZ52DKT0CpDfC4nu1zLJAuSX4ntHpfAKzajl9TyiA0WPtaPGfISo
         EN3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=l5z/WQ2b7LK558GRs/wivASK5/3locy6VzN9eiAwE/8=;
        b=YgamAoN/2q4GFgfiqpBbi142904DwkRlvfr8xb/YiI1w1y2OGd+bqT/X3FSxWofTV6
         CUTDxbKosOtdc6DCLEu2fxNW7SnvNqTdJ7mu8kbEecvK+gskyBJomuqoIjdLZjI5iyfa
         2yvxi9tEdebNAxCCk94ZSO+lbjY19sHsFUFYXK6g7yPy6UOecTbRbHt0awkLlhNJKytO
         IuQ3yFQP5tTLhS/q72H6zpElZoa65/MWeupx1v+rYMyGVq8QDNDnWCE8L78vsdsp4IKq
         TvOis655/Ghin/YygLaS1EVhbjbJZDneLNNpW4ib0BYAEWyaOSs4Jyz8qXrXZK/L9Yma
         +W4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.174 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0174.hostedemail.com. [216.40.44.174])
        by gmr-mx.google.com with ESMTPS id y7si465500ybg.5.2019.10.05.09.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 09:47:03 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.174 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.174;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 8EF2118224D7B;
	Sat,  5 Oct 2019 16:47:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:69:355:379:541:800:960:967:973:982:988:989:1260:1345:1359:1437:1534:1542:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2525:2559:2564:2682:2685:2731:2859:2898:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3740:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6261:6742:6743:7903:7904:9010:9025:10004:11026:11232:11473:11658:11914:12043:12291:12297:12555:12663:12683:12895:12986:14093:14110:14181:14394:14721:21080:21433:21627:30012:30054:30070,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:3,LUA_SUMMARY:none
X-HE-Tag: scent99_2ccc9c5de409
X-Filterd-Recvd-Size: 4354
Received: from joe-laptop.perches.com (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat,  5 Oct 2019 16:46:59 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	x86@kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org
Subject: [PATCH 3/4] Documentation/process: Add fallthrough pseudo-keyword
Date: Sat,  5 Oct 2019 09:46:43 -0700
Message-Id: <09a42c7275afa7e6e9e3fc57a15122201fccd6f7.1570292505.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1570292505.git.joe@perches.com>
References: <cover.1570292505.git.joe@perches.com>
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.174 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

Describe the fallthrough pseudo-keyword.

Convert the coding-style.rst example to the keyword style.
Add description and links to deprecated.rst.

Signed-off-by: Joe Perches <joe@perches.com>
---
 Documentation/process/coding-style.rst |  2 +-
 Documentation/process/deprecated.rst   | 33 +++++++++++++++++++++++----------
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
index f4a2198187f9..ada573b7d703 100644
--- a/Documentation/process/coding-style.rst
+++ b/Documentation/process/coding-style.rst
@@ -56,7 +56,7 @@ instead of ``double-indenting`` the ``case`` labels.  E.g.:
 	case 'K':
 	case 'k':
 		mem <<= 10;
-		/* fall through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/Documentation/process/deprecated.rst b/Documentation/process/deprecated.rst
index 56280e108d5a..a0ffdc8daef3 100644
--- a/Documentation/process/deprecated.rst
+++ b/Documentation/process/deprecated.rst
@@ -122,14 +122,27 @@ memory adjacent to the stack (when built without `CONFIG_VMAP_STACK=y`)
 
 Implicit switch case fall-through
 ---------------------------------
-The C language allows switch cases to "fall through" when
-a "break" statement is missing at the end of a case. This,
-however, introduces ambiguity in the code, as it's not always
-clear if the missing break is intentional or a bug. As there
-have been a long list of flaws `due to missing "break" statements
+The C language allows switch cases to "fall-through" when a "break" statement
+is missing at the end of a case. This, however, introduces ambiguity in the
+code, as it's not always clear if the missing break is intentional or a bug.
+
+As there have been a long list of flaws `due to missing "break" statements
 <https://cwe.mitre.org/data/definitions/484.html>`_, we no longer allow
-"implicit fall-through". In order to identify an intentional fall-through
-case, we have adopted the marking used by static analyzers: a comment
-saying `/* Fall through */`. Once the C++17 `__attribute__((fallthrough))`
-is more widely handled by C compilers, static analyzers, and IDEs, we can
-switch to using that instead.
+"implicit fall-through".
+
+In order to identify intentional fall-through cases, we have adopted a
+pseudo-keyword macro 'fallthrough' which expands to gcc's extension
+__attribute__((__fallthrough__)).  `Statement Attributes
+<https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html>`_
+
+When the C17/C18  [[fallthrough]] syntax is more commonly supported by
+C compilers, static analyzers, and IDEs, we can switch to using that syntax
+for the macro pseudo-keyword.
+
+All switch/case blocks must end in one of:
+
+	break;
+	fallthrough;
+	continue;
+	goto <label>;
+	return [expression];
-- 
2.15.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a42c7275afa7e6e9e3fc57a15122201fccd6f7.1570292505.git.joe%40perches.com.

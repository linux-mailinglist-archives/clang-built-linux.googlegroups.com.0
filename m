Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUEFW33QKGQEG327LSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B2D202058
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:26 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id l62sf7960870pje.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623824; cv=pass;
        d=google.com; s=arc-20160816;
        b=kGzdqwx7F3r83c9E74QDSkg3QWPUre3mwDIuixFSNAZpqf7YjSkJIc32FDpJq6ImoZ
         22a5gMS0wM3BXTXWIIjjfNNamr3Hz5H9/WqeilPPaM99ssExZZ6VN5mA560FescjI4y7
         chXd/CV0OpLLqf6XAKuUKoxRWoyGo4OnApdl9PcDe3cz3SvEsLxtSLIzA+aI2R/XoUL3
         wYfaCaIlRnWyuSbt5mnRgSQIm2glL1debjGGErghfa3W6DrdDQ3K53y3oEREcldnNZ2H
         aEsqDvEtvfU5ujsPinn0Vyt+5lXgiNvTmSnS7PrYlq7Oks+bvSUDCS/h92THKyze/mJC
         DPcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=Wf8/HP3PxT34YKGkcT39lHfyTXdsHEgD5z/AhyQsKrU=;
        b=VLR4dS2S5I18Ni+Z5A3hpC02OOc5BCJ1K22Yp7deTcTxAxzcrNbtv9D2wTGAzevFOf
         ELnVmhtEzyAEEI1KGufHIYl0AcuUXbuGMKnWT2IE66ktXPPdgJZOg9qlPo0qoSwDXt3e
         UWezclX7/olE7JQoGYSOEfgsCiyKcIKkf1LjvxJpRv28rcWPaSEU9uEem6V6WxUa3faO
         iskUu0845umROksHAIJg7X98m7D6i9yzv/VMT3gEg2H+fi3ZaSReJOGnqbfYTNjwp8ja
         LaEANhqe6jF5VxNucQPmV13TrWeznnMSsyV8Gs88mrZVPmqcxkyOyYVeRKHJ7HJc7EdQ
         rLCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hXEDT+oQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wf8/HP3PxT34YKGkcT39lHfyTXdsHEgD5z/AhyQsKrU=;
        b=Cv5tREcg356sNJkcKEJ53VkU2lyOJAMSxnvWz33hR+9GdN7ypf3+mMGCTBlOB0SzQ1
         DAKpIxef3i0HjuHkgQ8iO0RNr6bBY3o1WHY2OKkBZsr/tCaapIW127THdY3mum/FjBiZ
         2qcjiiqFMqjrg/AGA/gMNgMt+kB6+z9CB6/bs83ICzQBbd9GobI4BuGId6dkM5JEm3Q+
         tFu1TXn0t9GdeotutlTtt1ykqoYR/V+BaaSShNs2JdSQFDBRi7Hi8ayv1rfKAHM7iZUh
         l5nmJLFVFUZsk0JoHN6MZUKuw34dDlMkoXU2kTNHkySgEm5s5lfb5Z0SZLbRz5yA+tPM
         SseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wf8/HP3PxT34YKGkcT39lHfyTXdsHEgD5z/AhyQsKrU=;
        b=S2x509RJf9jnTF2Hm9kY0nfh0gAh+YEVF6YidfuBzBuCwMUoyEh4WQIhjCtHI+e4Cd
         3/9mCMXn2cbeY9+ed8FuF7lC/Ee9UdrAaB0M9b1BwQaR9CqgbbfXLmul9Uf0gDBYbHOY
         uqTLemVJEQWeuZ3/8wjZSh0M62GLj968/74gHQk+3v8fdv9i4ZiD4Spt4XsGv+OpIxWX
         bPDqB2W9wjN28jM2ah4tRRcHDMH+L4Li2Jx1e5hd0O4mVoP1T7PNxC7L22WZTRnmo2G7
         TH7YT1HOCr8+DTLHDxlJZ/hthx9L/ax8PU3/3WcbI9Rup6TC4woswmHMNxH3s7+E4aap
         6gTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53256xa+obosBk9M1GwBt4PwYOHJHUqMWlTl5f1EOM0vDdBa5NSl
	AoV7V2cEvTLe768lefr0OJ8=
X-Google-Smtp-Source: ABdhPJzSVjntw71sxBdnSSV3Pc6AJrwK9UD+zN2ahBNq+ljjwQofo4c6XdCRe0vCgDNsXFUzLRmvag==
X-Received: by 2002:a63:480d:: with SMTP id v13mr5506397pga.286.1592623824704;
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls4538266pjk.1.canary-gmail;
 Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
X-Received: by 2002:a17:90a:d244:: with SMTP id o4mr6477418pjw.186.1592623824431;
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623824; cv=none;
        d=google.com; s=arc-20160816;
        b=m+Uc0AlTYuGQnWXJ3vfHOPrHFNezNc+1qzlhGhe0trg90+FZWxVtGRnuZpSbT3Qf1o
         LnAC9Xo84fgCrH6r03NlkUI7gNI7RsdXHPmYVhKr2ZZMJVaS2FHwG2cq1lt3zesX5HF7
         aImR+1xZfHxLrTxu1AY6DN0exMgt+txaHE3OdxH+g6l/s7UdSW2+qKgUNfEnSv50Eyg+
         /CdL/cPWJ0fU7z4LDm4n+ycRmrogRwKqdepR0v9ADEYRKI/4ayl9sTatOYCNDEvq3V7n
         Tvb1ZgXMGT6TcRnZ+U6VMpglVyAkXKDrfngHkRWM5WGlgYDf++KX87aG791uYUWDH9bH
         fdQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=53EFvIpvLtL19VTcgKVkwQhb1JNYVFCG8WLiohIrzpg=;
        b=oxmP7y8gCFDDLq6g9WTSIXYlG4uH0xJZuDd6bocSQWimEuYQD13lixF5e/Z6Sghcxi
         79ucMn7FgAL3qbuu9Ke8De78mU5wLyTZAQNvrsVvJOvvjSZ8yv8aoOTcZ+qnEZihoNI/
         lzrYx6JuUXpa8Vwp9wS37/Q8GwNQBD6qTButqqKy/f3q8UesaQkGq6Eo3eUnAdrRpQg3
         QG6Y0bvMlDoce5oZ59hqhITWqYcgLUWbVFx/wFFEr2LB6CubIJrJYD3q68prhfqBnF/u
         7IwaI/3OXWFv/rjhPIoZl4qLQG93CJza+HXgmahKn43R2cmlVlUwaJVIpgi0wTGmOKll
         OtSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hXEDT+oQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p9si360399plr.1.2020.06.19.20.30.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l63so5375720pge.12
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr10814981pfr.47.1592623824106;
        Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w77sm7615693pff.126.2020.06.19.20.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 07/16] clk: st: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:58 -0700
Message-Id: <20200620033007.1444705-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hXEDT+oQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/clk/st/clkgen-fsyn.c: In function =E2=80=98quadfs_set_rate=E2=80=99=
:
drivers/clk/st/clkgen-fsyn.c:793:6: warning: unused variable =E2=80=98i=E2=
=80=99 [-Wunused-variable]
  793 |  int i;
      |      ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=3D1TGqCR5vQkCzWJ0QxK6CernOU=
6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9k=
nmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=3DyVJu65TpLgN_=
ybYNv0VEOKA@mail.gmail.com/

Fixes: 5f7aa9071e93 ("clk: st: Support for QUADFS inside ClockGenB/C/D/E/F"=
)
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/clk/st/clkgen-fsyn.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/st/clkgen-fsyn.c b/drivers/clk/st/clkgen-fsyn.c
index a156bd0c6af7..f1adc858b590 100644
--- a/drivers/clk/st/clkgen-fsyn.c
+++ b/drivers/clk/st/clkgen-fsyn.c
@@ -790,7 +790,6 @@ static int quadfs_set_rate(struct clk_hw *hw, unsigned =
long rate,
 	struct st_clk_quadfs_fsynth *fs =3D to_quadfs_fsynth(hw);
 	struct stm_fs params;
 	long hwrate;
-	int uninitialized_var(i);
=20
 	if (!rate || !parent_rate)
 		return -EINVAL;
--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200620033007.1444705-8-keescook%40chromium.org.

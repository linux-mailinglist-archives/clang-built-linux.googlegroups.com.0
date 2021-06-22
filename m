Return-Path: <clang-built-linux+bncBDH7RNXZVMORBSPNZGDAMGQE35UNM7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D493B10C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 01:48:26 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id o1-20020a6341010000b0290222cd5792d0sf109525pga.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 16:48:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624405705; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqAKgVF7mpjOs3kiq1NcJ0av2NaYFlB+o7spjF8kSEPCXji/OEDi5z0EkeF97hOvGn
         yJPi09eAgXlMYbEdIKvr7YzSWzQrXlpGFLZ/z/cOPGCci9g5r77YzxhoGJ1uM8rf2F4Z
         zNeeYY4JDhH2+JB4jKl5UhM/suGkWniRrGknTSBkyamG2P+g8O1OV3aP1zJR4xtEVkAd
         IibMV4vBQQ2T86lkwuS9Ftom66mcSpVISquxz3nf0ps1ca87RZbUqM1Mml+xydDy2LKM
         eegddsna41MvuZ6Z6xb67xXjomJXcPeAESClwKeqRUnnIFYarA/bEalGkeZYpXGW2c0n
         ZE0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :message-id:in-reply-to:subject:cc:to:from:date:dkim-signature;
        bh=mPiqDPIy4LG/me0FDTCjlQU4hXkVpXxNV3IKEW5yWA4=;
        b=vNRo/tw55lsbfKXKDFQS05IVXFMoGaa/UXARPLMXfXUhRADikrhTXR3KOlfJco5F1G
         dVm5YBR4gG659n4vNv4QgFySAX47VsEgGidCgAPSpWVLejydCnsUcMB63ydgxMvy0SXe
         l3tiSpIW6PSlO4m6nEoyMOcbBtH2YVxBaRK8KjOlCNJt+dsh5wif8oCRa8+d4hIteFEB
         VFw0Ok3ig6LrLBwWAm+OEPs8Rku4j1P0B16Lw31nmQ/2G0M7NIJ2rGfhbXhRsBKTrni4
         O0IvKOP0aRuWzJqv+uKHRZjuRLAt7jaYmsYRO1Nld8XxQ1GulTFN+OOkki/4HTgQMRAz
         zfdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YPa84iRA;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mPiqDPIy4LG/me0FDTCjlQU4hXkVpXxNV3IKEW5yWA4=;
        b=G8xRdfqd0f+eLM7vQ1IYz0WQar2yHQjrzKePNNHRe69KBSYUHW3iipygoCtlZyPKag
         eBlE1pt8guR7Ss7p4g1d3Px+kdPCa7mu3Hh3gwF/UxIL3LheqW19G34fU3FL09Rh+lvn
         hwPQmD53R2V2ZqeU9ug4nFJReIyGIstWf7A58MxEDWAhAsyU6PLQbWTtt7sZtpWYcosa
         TNtAS1HCapu/5AooepnLBT+DJ61c49w9IMo8y0N1aysPV7nWEsTB87h7tsq5h0H9CXJu
         cTglPkezBUo2ymyqtR4LhrAfeyQsQCXhw8e859J/a1VJyyrT+WdBlxw6tBhlFgcD+19E
         wpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mPiqDPIy4LG/me0FDTCjlQU4hXkVpXxNV3IKEW5yWA4=;
        b=imN7WtC1K3dqust6sR5k0xeU0k16B1LmOaO0u8ciRADv9MhjLwhGpQ/gtObcDR0t/k
         2GMlTY4YykDVJx6S/EqemSofcqcEuCWtH2KIR13zrznjEVOKFCi5J2k0662KPlcSYDWH
         pihEMUdoqNYtTefoEwB4mjxpqGvGELL2WMG8nHGw/pQtTg+aXmaagm3rz3ka0L3c4/EY
         7Fn78JcrNtpTIXr2qwaUmQHPVYzUvkIxMRnGa34qMo/nS0/Ev5GDRHdd1YoluTaWdZsg
         6go8oKy7+p7/anpfKJr9eVJX6JQBe2lNGRzlL/IEqT9vYi5HQ5+KT1Cbj1TApflmoJxy
         bVfQ==
X-Gm-Message-State: AOAM531s7tynza/APAVgm1Wtu1Yntpvi8g56G672hB1dTMJLx57spTOl
	WGUaC1EMsxQ/iQYLPgRWYaE=
X-Google-Smtp-Source: ABdhPJzqgyiDb5S08fb68H5Mwisse9c3GlP6wUFk2qOXmWxFOUYcxhSejlZ75y3ypV6aUZFwFfEqLg==
X-Received: by 2002:a62:7d4f:0:b029:301:b5c1:58ca with SMTP id y76-20020a627d4f0000b0290301b5c158camr5993900pfc.68.1624405705217;
        Tue, 22 Jun 2021 16:48:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d14b:: with SMTP id t11ls261885pjw.3.canary-gmail;
 Tue, 22 Jun 2021 16:48:24 -0700 (PDT)
X-Received: by 2002:a17:90a:4d48:: with SMTP id l8mr5407154pjh.120.1624405704601;
        Tue, 22 Jun 2021 16:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624405704; cv=none;
        d=google.com; s=arc-20160816;
        b=fnZw77RWpjfv5fGF65SnISrieV3f5+s2HABbr/whKzg530WiH98hditdt8WzjIaBFN
         oBYtSg4rRGZ8Sjh/YCvSnSVB03snUc1BraYmr6BlHHSKdaXtagiAkELy/Ho3Oo35Ia/Q
         8Wj85HUhegDbEQDlZCTrn3LAHOe3/IBNw2sISmTzJmXBefqB3kkXNatkVo2mh0IZSZBf
         YDLhhf7HOn1nRF+EZNuveCbVlxe4ljqXg4BLOheK0R7PJt/lVEG9fkrQ13k0z0q3qLXW
         hDFdndQmMSeF30qopf82vXZoVewaMC/YnKyUlhxO5tdud5/QvXrJ4+caixGW6vKxjBui
         uszQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=1RLgLXFqq15csoH4mq8p9nRQFwbdP0zTabyf/tYFG10=;
        b=bnqf9np4jqXevbLDY04X3qlF1cKDnOchu2/v6UcTxcBBis2O/dQIlTezZIa2ghGLbJ
         AzjVBAIHtud78K4nvw+Oebux99Sucx+T8FLflVU3HG7qMgCPFZ0Ls7D0u8+4EnGKfgEr
         MQHJv66eQBQ8FwmpfRipXVC/3mxYRyRSCpDmOuIe6rXwdNL4EdEASWhLofMuavBxB/aI
         YAbYpRjU5azpbaevLIJiX9Au3ChF2BBDHg0qWl/RPHMNuOomaSh5f8uz8iane2iKn6va
         Lrov+922dKNWlq8ciOrJMFNYRgYOXIUwn+ll5SPeUIkkOrwjLDizYE8TCT/mv5UZbccO
         amuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YPa84iRA;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id o20si409990pgv.1.2021.06.22.16.48.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 16:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id g4so409808pjk.0
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 16:48:24 -0700 (PDT)
X-Received: by 2002:a17:902:b588:b029:11d:b246:c59a with SMTP id a8-20020a170902b588b029011db246c59amr2824548pls.58.1624405704049;
        Tue, 22 Jun 2021 16:48:24 -0700 (PDT)
Received: from [2620:15c:17:3:d578:e7ed:94b1:7b] ([2620:15c:17:3:d578:e7ed:94b1:7b])
        by smtp.gmail.com with ESMTPSA id f15sm20903238pgg.23.2021.06.22.16.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 16:48:23 -0700 (PDT)
Date: Tue, 22 Jun 2021 16:48:22 -0700 (PDT)
From: "'David Rientjes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gumingtao <gumingtao1225@gmail.com>
cc: cl@linux.com, penberg@kernel.org, iamjoonsoo.kim@lge.com, 
    akpm@linux-foundation.org, vbabka@suse.cz, nathan@kernel.org, 
    ndesaulniers@google.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, gumingtao <gumingtao@xiaomi.com>
Subject: Re: [PATCH v3] slab: Use __func__ to trace function name
In-Reply-To: <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
Message-ID: <53523c2b-342a-bf69-ba76-d5b10d6ad96@google.com>
References: <cover.1624355507.git.gumingtao@xiaomi.com> <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rientjes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YPa84iRA;       spf=pass
 (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=rientjes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Rientjes <rientjes@google.com>
Reply-To: David Rientjes <rientjes@google.com>
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

On Tue, 22 Jun 2021, gumingtao wrote:

> It is better to use __func__ to trace function name.
> 
> Signed-off-by: gumingtao <gumingtao@xiaomi.com>

Acked-by: David Rientjes <rientjes@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53523c2b-342a-bf69-ba76-d5b10d6ad96%40google.com.

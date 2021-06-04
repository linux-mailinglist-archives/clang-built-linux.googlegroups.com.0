Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB36V5GCQMGQEOITH3KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A125E39BF48
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 20:03:29 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id w12-20020a17090a528cb029015d7f990752sf8153581pjh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 11:03:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622829808; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8e1TTR+5x1htAfU4dPnQHDiIeNAPokIIPpwpZ4slAQljNq5h3JrwPIgTFffqxNVt2
         gpD4FcAJ/txGCdDDU+rJc17jvsFyvTilq2BSx6ylBLy4unvP0AxYfvyKIiFf+B5p+6wY
         WZcgqIwRmetRkcVfJyGtR85wst9VT81QDeuVksEm21sMp/JY4YUv2aigRCCnyzpNEZPH
         RfaB15jX3BBBl5bVN0mefID93nQgV9Auk4VQ1kdqiny8I1b5sGB9RYw978ht5lkOmqz0
         vpIf4PO9CBlwfzYEa2v/6rnR+cCfPTw8bcYRKLcZOWyuGjVvgpn2LF6mzsZjueNBqzZe
         2x0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ldlEf0EzBY3ZTfxYCYk1hQy7S08U8+viZN0T+CopFvk=;
        b=uADm13AGU75IqgsEHuXaDgmIheKxB45hWOC/LaT+8bWKwaAapqwJ3+KBu8Xfm8FMMw
         lHLf5Hbd5ncO7As2YMhhCNBzOSqB5Nx8xe9rixcgBH14xxvJx8VM6Y5t6oyY0KPNvuzp
         Zcue1SRJ3ZOMSxRst170LUjrBK8Ysf5UDIIF7PasWDk8ioMWSmqs9p23MPuzvRyBTvHN
         9kSGxoN7H1Two7b2rvfb+mIqW6CYGvPRnkcl5tOX9pjKU5V+ux6FJpklDaWTiDLnq79W
         pVqT42YHCtovCNJTGzAhtZOfTtKRMM/TenNue9L6t01JARqxhysF73/TkWnF7Z/myoeB
         BnwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1tCUqkV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldlEf0EzBY3ZTfxYCYk1hQy7S08U8+viZN0T+CopFvk=;
        b=Fj0nV1nDaYcRoM28C6PqRy6jefRf1JUsabjptJisgkQsDtMtXejsDzls4XNBZHXKrc
         rcU6wAULBnq/1nwQ2haUTUu6ER6ihOXQ9xe9e+oWytcvnfVIJefLxQyuMPzh29GKiL2Q
         TjAPzWHUCdeJRBXscVpFI72BVEG1eq8hS4tQaV65rQXLZsd3HOw+nbkjx7vOoGa5GNdN
         XxY6pc+8xbLK/22XGKA8pEDu5f82bhZa4bSLSULIY79e4twJpHAYxnqft0xc1FVwq8pk
         TKp5UJdYQSxD3YAXjmy5W2SyboxIg+1whALdsBxafYbRQZWoLhWL94KC99PmbTlqevHu
         obqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldlEf0EzBY3ZTfxYCYk1hQy7S08U8+viZN0T+CopFvk=;
        b=Gg8LeLxaTBSaq5RJzREXC0YQGDgqNTQtkDlN0sjopVyWRz9h8wOjzqs0HnloqhG2wF
         iog1ZaUWp36SToKSMy+4DgxTkT732KKu4PWq3z5ahg/ttIAN9hE8WFV+u+7kREtexyLU
         qK6k08MbY5EjE5lZjtTHKCqlYUtTaOW0+hPD1ogHyaGZnKEnN/JeM3T9VQh6MQ0sLakv
         tYpMbVcVlx8QN4CE3JcRkrN3jqLaPl/9dV5lRbEOs7zVNIrMrQlJmbm9SAu4/Ol+q61q
         lqqFMGoiSFH1OZ1WdyL+JDKrdTTB77vFifA4ODnm0e3+NJEVoenLdPxKddLzBCCkkSol
         Df3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RrdpK4srfy0ylwv74aBN3kmW3GugMViCyW+2mAAxEZJx7rF0L
	Qo+NZYJkZLHmIiWrSAZF0gw=
X-Google-Smtp-Source: ABdhPJybQkQ4bZ40JzUc5DGWF5rDqYcI712HDyZZyAGAFD6vmei9ZUvMwlZyyzAgKcADZwhv6XEkmw==
X-Received: by 2002:a05:6a00:194c:b029:2ea:5909:ebfc with SMTP id s12-20020a056a00194cb02902ea5909ebfcmr5862735pfk.40.1622829808127;
        Fri, 04 Jun 2021 11:03:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b611:: with SMTP id b17ls4261638pls.4.gmail; Fri, 04
 Jun 2021 11:03:27 -0700 (PDT)
X-Received: by 2002:a17:90b:1e11:: with SMTP id pg17mr6129514pjb.12.1622829807536;
        Fri, 04 Jun 2021 11:03:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622829807; cv=none;
        d=google.com; s=arc-20160816;
        b=0SjZdpah/I7lDPoEFKJ3JojFf+Z3/RFrot9a89s14Qor952vEL4HhH9dGEf3x5eCjk
         4JwuaZpCxEX9Ce+/c05Ctoxr1oh7v7XDeSU8kIm/67nwjwtcSUQ01WOxtx1QotkhaUqB
         KFpVVw75d1O/wQXoB0szUj6epyPcsa6zaJMrJqNXdKX2iRhdm7AuQWUlkVSq36uTqSq/
         c6FJlZKyac4m5iXGJ+Bel7Esps/m3MqoJ4NR+h5uWjSdZ7mvZNzomdpv3RcIZx9N/JaR
         /Hi2mC6PKifWOWlZU5Da4gc2cR0Bu/Bp1dGJH7XpPKXJBOA9eCKQnbi+IOB+PViA2KkW
         kNKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ox4Du5dlbD3YcIJp0009ChDA928P5AWLh0cTutjLWf4=;
        b=aIuegNrXinXSgk9mnm50P90qWB5cJ5IF7S7mIwVdMnTrOh8aAMrhfIcTpUpe6/ZJ3n
         9kVSHlq4vJbrIhoDuH6MBKGO9gqtYsDgOlV8TdgkgYyytwWFxAiFabWXwKx8yzCXgI0S
         mX2PpGmj1hSvJzDhTRpGYhWJrypsXfM9JKE31Mdjdl7N79HBffqGbwCaM1XRu/hhvoFq
         7B68Z0j0dBn4rmqLvAu2xYrfXmIp2srzQ1h65I6BKVVQGobyCxWkxO2+xxLt0RNeDYfI
         1oKLAtSaDK3rh6M7PjxkiHOV9WRTY3VUPbVgxBzAAaapU52baY3zjjL9AeJ6uwP5pXPN
         CPmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1tCUqkV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id w7si515995plp.5.2021.06.04.11.03.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 11:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id y11so345633pgp.11
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 11:03:27 -0700 (PDT)
X-Received: by 2002:a62:1856:0:b029:2e9:c6ef:3b34 with SMTP id 83-20020a6218560000b02902e9c6ef3b34mr5562322pfy.65.1622829807322;
        Fri, 04 Jun 2021 11:03:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m13sm5396085pjj.18.2021.06.04.11.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 11:03:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	kernel test robot <lkp@intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] vmlinux.lds.h: Handle decrypted data section with !SMP
Date: Fri,  4 Jun 2021 11:03:23 -0700
Message-Id: <162282980179.3081583.15776293089632738791.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210506001410.1026691-1-nathan@kernel.org>
References: <20210506001410.1026691-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j1tCUqkV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
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

On Wed, 5 May 2021 17:14:11 -0700, Nathan Chancellor wrote:
> With x86_64_defconfig and the following configs, there is an orphan
> section warning:
> 
> CONFIG_SMP=n
> CONFIG_AMD_MEM_ENCRYPT=y
> CONFIG_HYPERVISOR_GUEST=y
> CONFIG_KVM=y
> CONFIG_PARAVIRT=y
> 
> [...]

Applied to for-next/orphans, thanks!

[1/1] vmlinux.lds.h: Avoid orphan section with !SMP
      https://git.kernel.org/kees/c/d4c639990036

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162282980179.3081583.15776293089632738791.b4-ty%40chromium.org.

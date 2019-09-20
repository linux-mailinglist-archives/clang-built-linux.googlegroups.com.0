Return-Path: <clang-built-linux+bncBCWJFEEKWIDRBFNXSDWAKGQEYQGHEAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC34B8880
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 02:21:43 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id t65sf3403918pfd.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 17:21:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568938902; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1GimQVonmqsk5Y1C5yn7dEHSfmEc0EhoBwqL1PCTmqB/C+N3LQa8cq+xeMQUA/fca
         XHUmD7w6njiW9mwC/ci7JGAY9KupKo3PWos1K0M6cKYQrgaxcS45oNeSvDcxO/1godzs
         Lu8OM2KR56PH3Qfqqyqcn6M9xi9Vyl1M/+nbYewDjJ6mOvoIwKz2YLkCO1LR+JE6ZjmJ
         QkH+cW8oQJc2ULvjFOlAVwZ80PKRrWcDh1CV7+ozvlp40soy6CaJsSj/NtK5kfVnZh+G
         o4Fd79r1ZVb2iMVxits+WNSEeC6UHuvIz3ECHIOdpFkX3W/VvmhEupmx4aU75m19J/Ah
         0w6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HJn6sT+k85tB5GKtS7NQqvQoiR8j6O9jHz5U52Qht3g=;
        b=X/NpeEDv+VXM2FxEEqgqfAsGGQJaIKeUwDHlk7XlMK9Kg5hXWGQuIZTkApeh5egH0v
         ntha3dRRgWO6NVfuuuY6VqTBuLTZe9Vx5PyHkf4I2dbRdqiCsb1G/BY1NzihG8FYVAe4
         p+Mlc9LB2qhWbuloj0mpbWiDbID3rNevRsVV3vWhJNz0jXCyK2fkLKK+VycvwSDghv1F
         838+cOfsmi7W0kCGip/1SmPjvmJuijxGiei0eLbhHF6/MTu2gjR2q5Y5IxBjqcLWLUqt
         99UPudrfgLTbRmwpOSU4KFEFfg4jtG444rAcMfoE+0lFJPOWrFP7ykT5EkWEElZ/Wlyr
         rFLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=tAi6KJc1;
       spf=neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HJn6sT+k85tB5GKtS7NQqvQoiR8j6O9jHz5U52Qht3g=;
        b=ipr5bxZKY73YQDX6K+jEsuxDrMIlzkb8gPD20rivZTVInhdxcJmqEVzpvvgmrFE+hS
         Ng1+JijbVQYkpsokI7rI8mV6litYn1oOXixAf98AkAgxoJiBRRojJaV7xixSkXJ1jWiE
         kcjA/bxKea7dEQMjliNHSbK5zXx7+pFoPAllNT9zJTncym82Xb2kZI01Xq9nEPbRezbe
         tlJ9wFzSsdNw3xBK70CM0OlhM5+E6JjubeuFoKR6q/zbC1vmMLiR2KcTl+Fd7rEUT1IX
         SHEOQGlQNs7YTQVACNrFWiipXFuq2IwD8uj8HcwRdpS0S/tMcmu3nTgxB5MZB2IurkAn
         yIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJn6sT+k85tB5GKtS7NQqvQoiR8j6O9jHz5U52Qht3g=;
        b=me+96yrsZaw04hqk6YBxIDyQcue7EdQD/Loktoqq/JXGz/OZS+5YdXwOWFpjHSmC0X
         fgSy9RPVZe/o0Wt9+XgwFmpIJ8UqwCX7H36DoSqvSNG6C93RArZ3nWsfh03xllrWc6Lq
         Wk9lwdh4dO1woOjjC3N1D8K99eDIiT/MumTIWqOcEw2R6nnRVtlaaPkzUwE4O6ppzFAO
         uLFAWEymiQ6o7H33vuSDkQu6Ma9mzEjz//lztUqtpiKLcgT7OtG0tHtR40eL0UZ1E/mu
         GpQPgzC9PWzEMEU5HWyGTIHFEB3PNnZX4Z2E1ZapUT6ozWVNwzQ5G80VHqcFYOy8TzbH
         qt3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWo+kq5zIVeB4rpHchzlN6Q1Z1b0BdRELgmh276dYxovCF9IdSz
	TFMlFIAAdcIlwSAkQkOYETI=
X-Google-Smtp-Source: APXvYqxqYqHJOQSBCFP1GGxgHSiPR4WvLiFQNZaU0pRpVd+ORYDm+aSokzKwXFdTCWQ3CJZqdY+hgA==
X-Received: by 2002:a17:902:bd07:: with SMTP id p7mr13507357pls.213.1568938901775;
        Thu, 19 Sep 2019 17:21:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:90:: with SMTP id 138ls1060592pga.1.gmail; Thu, 19 Sep
 2019 17:21:41 -0700 (PDT)
X-Received: by 2002:a62:754a:: with SMTP id q71mr13508235pfc.70.1568938901486;
        Thu, 19 Sep 2019 17:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568938901; cv=none;
        d=google.com; s=arc-20160816;
        b=C278AOrV4+T0x409v1Safh51kSxy9rJa9ZEs0OfRJCpp4r7VpEbIQxsZw0CdjAhqCY
         HRT7hBuxWonrRBQDcudpPZMv7mcqnm7a0WtRYyqAgo6XzKZlsdd1gS2k+x2yWqGUZX3B
         njTmoD0edoPxf8gG6lnxHBqqBpXcj+vyZiPTuIpnzViXBcndG9HZ11cU6lmLRaD4601z
         hF/zs0FX1AaknQb5o5Nd2f6B+nklYMfItgyrVvn/XRtT6kN7iBWUi4DS92jnLLlYgSEt
         DH1END76CSHzAIQR0yC/B9+G+MH7whTKLYIUVE2/XR69lgSoe9mi/s8k0XgUkCZjTmMh
         ghKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YTp5B1qD8E9aflcOxXO4o+LEcSQkbFxZ9MJfYS1B/aY=;
        b=TilqRU8CmC90BnRjdMBQBRyYCnfDMCQyqMelmUrHEMEbAKQN6QV5l0Q36f53cSdkBf
         4Gha10KV7sdDV3Y/EnRNYuBspvHC9UhYJzRq93XsQ4b1bsyrIrUaOUf9qV7r8T2SlwFb
         XDDCtUxQKkW57/61DzSkPFRFYfQiCAJKVfMHYgsY+XZEngiJz7m8eA0SDZMJ65dnZqy2
         gEn1KPGPA4dbbyb/B5vmmmhO7toldyRVk8C7gNh7qFyZTCT75AyzfbHxJdZeD6K/Pmln
         BPF4RhHFa9YoW0bZi3OiMWMl8mIdx1XpvVra0Y7kM0creD47w/AqHC/c4wO1M5wb4ZoH
         rZfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623 header.b=tAi6KJc1;
       spf=neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id r186si32762pfc.4.2019.09.19.17.21.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 17:21:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jakub.kicinski@netronome.com) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id w2so5452915qkf.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 17:21:41 -0700 (PDT)
X-Received: by 2002:a37:591:: with SMTP id 139mr590821qkf.162.1568938900968;
        Thu, 19 Sep 2019 17:21:40 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id c16sm198104qkg.131.2019.09.19.17.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2019 17:21:40 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:21:36 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Shannon Nelson <snelson@pensando.io>, Pensando Drivers
 <drivers@pensando.io>, "David S. Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] ionic: Remove unnecessary ternary operator in
 ionic_debugfs_add_ident
Message-ID: <20190919172136.01f0e016@cakuba.netronome.com>
In-Reply-To: <20190917232616.125261-1-natechancellor@gmail.com>
References: <20190917232616.125261-1-natechancellor@gmail.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jakub.kicinski@netronome.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@netronome-com.20150623.gappssmtp.com header.s=20150623
 header.b=tAi6KJc1;       spf=neutral (google.com: 2607:f8b0:4864:20::744 is
 neither permitted nor denied by best guess record for domain of
 jakub.kicinski@netronome.com) smtp.mailfrom=jakub.kicinski@netronome.com
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

On Tue, 17 Sep 2019 16:26:16 -0700, Nathan Chancellor wrote:
> clang warns:
> 
> ../drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: warning:
> expression result unused [-Wunused-value]
>                             ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
>                                                          ^~~~~~~~~~~
> 1 warning generated.
> 
> The return value of debugfs_create_file does not need to be checked [1]
> and the function returns void so get rid of the ternary operator, it is
> unnecessary.
> 
> [1]: https://lore.kernel.org/linux-mm/20150815160730.GB25186@kroah.com/
> 
> Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
> Link: https://github.com/ClangBuiltLinux/linux/issues/658
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thank you!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919172136.01f0e016%40cakuba.netronome.com.

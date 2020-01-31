Return-Path: <clang-built-linux+bncBDX5ZRH7XQGRBMW5ZXYQKGQESAJIM7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E014E649
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 01:02:59 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id a21sf790173lfg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 16:02:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580428978; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnDineJ4geJZZKv8IqtF+wToZyLxD8DbvcFBRnVUlNzctzqSVTRvSeDEjIUo64bDMo
         dPQnbQxVtptstnknnqDi6K4UejDSklrgerbStR0e/s9U9yVpyz32m24ngDqGD/ATBuz1
         faNhX8mQRD2ACG4QJO4Ho7rE1Gr26YlwY7m3iIlM2D3huJYvq5TkTfcAIaLqzReX68Md
         1cENZT+6j2e30dJUTGlVls/02sImiydGRDmeFiVI2YKz6sr1T3ReCwvSRR8WkqjT/zaz
         CeMzPbtP3S2A6/Kia5bs/2b4zO7j9HlHtQxHXnTRzDpQsA00X1fQaZUkSaCp++Lg1TmG
         wlMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=/Xj0DjG6FdW7EgBsDQoifnS1Gznc8eA+M+3HgMh0P+E=;
        b=h7N86oFxLctiFe7lMjj3LvBpjfWIjQu3QMpyHtHcqOIyhBrfh/UMIGip8TrySPI8EI
         pg3llsXIOFWJtMDdsHJlRWbMzmY39wcnlEGHnpIaJvrWI9Ssf5M4DutYxvKomIsJudtq
         6au7bU+0GiwUTYx66/DFoRS8Wqqq6eue1QxxmbW6PH29p/Ko9CNBSeDlShuEQ80b273+
         xsvel/ln6gG778LDRpaySQXmUbxvHXfzYYcfWv+K1opzxzYdV3MH67jxOYQkdtvuTcUI
         4cos9iGhCNE1UP7MvPK688EjPS0dMeJBriu8M6R327GYGgjt8n0hZqTfZMOB4bJPySVu
         8ptQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=CxlznEqw;
       spf=pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=khilman@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Xj0DjG6FdW7EgBsDQoifnS1Gznc8eA+M+3HgMh0P+E=;
        b=oEdDHew+R9LfOhYpa9XdFHQUqlPbzN0cLdRQsvjhd+0W3tyVW1r7SqVO0pw1xIg0W/
         F8VF4eaJ2/6Yl/OhD7sHcahOfzqSAity1sOafwCElCx3nYaU3QWEeItPi/pWWIHbOqD9
         ZLHGNjPQgnvh3deFpMABQmteK38FtZA3I7ErhiblBXR5BHQe5716zQcJae2wvyxnB/hn
         s2uMUHMxoeDPwDvyxqoTUMp5cUmKqdeqdtPlxFLS707D3p0LpfQ8IgkBSOfBHLvIbbAJ
         rO4/0k4Y/Tqd+c9O/zjsk6KhO6xHouikPjTzjzM0Rm0KMJn3BcnE77kjlSrGhA31K37F
         phZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Xj0DjG6FdW7EgBsDQoifnS1Gznc8eA+M+3HgMh0P+E=;
        b=NDQ11eVdIbr+dMphEbSvrmIz1HWPqqBs82Ui4wixE5evuCEC8fpAqUUYhmOgxH/7H3
         2vMe0SXkDGLgNLSpJcR8eCIagIuC3499sbTf0dL9necoSjJA4UWMifUmP5fsWQf3stwe
         vMsZJ9383z12fj+6sjKIlJ/OIArD6h3TXtOYIuuRNgvlpQJwD8QdvZCv0+AmCA1EhSE7
         Xb/p6WhAv4HatdJVdmx0oOMC5xTA/DzRjgwpNRzuN36xlfYkDeMxMNWDwkbc25Ronz8w
         kbpIPSU0I/mQZ92pJ9IHPM1lOMYFvVAPMZtISUnBqgR/o1JceXayUnC76KpLBElZXGIN
         Kfqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9FX92uYu0onLDlV9jYQgYqlGAeNjHyH9iTwo0nN3sZ6jyEV5z
	rzAQtgPVaborNbhG9w+y8/c=
X-Google-Smtp-Source: APXvYqxFbddalhSsVnur5wpv0wLFEiEQE/VzA7V2NZ8cyJspBL+dneePUiJg3GzBqSzFPBq1DtN34g==
X-Received: by 2002:a05:651c:d4:: with SMTP id 20mr4215057ljr.269.1580428978453;
        Thu, 30 Jan 2020 16:02:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7309:: with SMTP id o9ls1195055ljc.11.gmail; Thu, 30 Jan
 2020 16:02:57 -0800 (PST)
X-Received: by 2002:a05:651c:448:: with SMTP id g8mr4438603ljg.35.1580428977604;
        Thu, 30 Jan 2020 16:02:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580428977; cv=none;
        d=google.com; s=arc-20160816;
        b=TQNgd89jfpvIewue59oDVy2CmpvLGgLNbb+Pedw9RVBrHwKrIJMQhnUpqxtdqVBmOl
         ikPclzYkLAjTCCphV+ZxioYVEFo0SCmIqoQH2zbO+W80bmOd/UzCbm3k5eKBAg7gt+YA
         qJCxMOyw/g+YfS/28p45SaRwsgwLOURPMwpFUAsffrRDzYtvU6dHt+PJs92moKrvDDGm
         MWthWNq8jIwG386XFh9yvR1LPXIM+Z5Epr2gwU24eTrX4dQwKBaVJyp7MFoK7qgqw58l
         HC2BK5cWnH9J84Sj5VR6UfbjbEkQW7TP97HfoKwjBrAYlFG6CtfMu825gGgL3PciJWny
         lQYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=uvb7UjEoJ5QUo55mMIeV2X7P8y9RLioRyMnghzSVrBk=;
        b=qYkJRVKCNLQGVgx/HnRl2nqEKt7MFphccSRNFd+lGAIkOsGBPSWjx2ruhhoyVaFac+
         NX1Em/bzLGFI4XEVNge586IMzuOzVafXn2OMrE8RJ+UkoV/508IjN+5DZtb9moUqtY+d
         SYc3pOHyFZY3z8WBpvdN1glR4/b+F+YSOQnkxYqZBGwvrvJZgxWbgpckrY3LF12PJceI
         G3VNSp1Kjo0p9Tsrew2fvG5BSsdU8EuL0MBD9K/bvBvmy/umNbEq1fUzx4UgMpAwSuNQ
         +wIwoEQSImSLHfTxq9lcvWZ2AX/DIaYoM7FOURpZqPGbkQR4Vjq7232CzytMy2ETuQQW
         IpaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=CxlznEqw;
       spf=pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=khilman@baylibre.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d8si387136lji.0.2020.01.30.16.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 16:02:57 -0800 (PST)
Received-SPF: pass (google.com: domain of khilman@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id b6so6473429wrq.0
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 16:02:57 -0800 (PST)
X-Received: by 2002:a5d:6b03:: with SMTP id v3mr7812645wrw.289.1580428976708;
        Thu, 30 Jan 2020 16:02:56 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id g2sm9292932wrw.76.2020.01.30.16.02.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Jan 2020 16:02:56 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Niklas Cassel <niklas.cassel@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Kevin Hilman <khilman@kernel.org>, Nishanth Menon <nm@ti.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] power: avs: qcom-cpr: Avoid clang -Wsometimes-uninitialized in cpr_scale
In-Reply-To: <20200130014130.51313-1-natechancellor@gmail.com>
References: <20200130014130.51313-1-natechancellor@gmail.com>
Date: Thu, 30 Jan 2020 16:02:53 -0800
Message-ID: <7hk158xzki.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: khilman@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=CxlznEqw;       spf=pass (google.com: domain of khilman@baylibre.com
 designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=khilman@baylibre.com
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

Nathan Chancellor <natechancellor@gmail.com> writes:

> Clang warns (trimmed for brevity):
>
> ../drivers/power/avs/qcom-cpr.c:570:13: warning: variable 'reg_mask' is
> used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>
> ../drivers/power/avs/qcom-cpr.c:520:13: warning: variable 'new_uV' is
> used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>
> Due to the fact that Clang's static analysis happens before any
> optimization passes are taken into account, it cannot see that both
> branches in the if statement must be taken because dir cannot be
> something other than UP or DOWN due to the check at the top of this
> function. Change the else if condition to else to fix this false
> positive.
>
> Fixes: bf6910abf548 ("power: avs: Add support for CPR (Core Power Reduction)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/840
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>

Rafael, feel free to queue directly.

Kevin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7hk158xzki.fsf%40baylibre.com.

Return-Path: <clang-built-linux+bncBAABBJXX6KCQMGQE2BLXOMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 950BA39CECB
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 14:12:23 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id k7-20020a9d4b870000b02902a5bfbbbd3bsf9193096otf.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 05:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622981542; cv=pass;
        d=google.com; s=arc-20160816;
        b=o33aV8+OW8JFqB6hoXfb02H2Uhd+iTn7rQjAWbgW3poMscOfirN9hdOacK5Iz6sm2o
         Kte3wXVCsLwnS04V/GUCo6tYAqIA1OyQzxOduD0BmPcG0Y9myLeaxjo7MPHYvRp1NRCY
         zg8Gphr9WywW33OQHdp+4qFfNvfeKz1QrPCmoMJxHGAqVGZZjVKgeKUfp6zpG3iwT83l
         6sv2TEoc9Qu/RVfkXguEr02RRc6g8qCHwGJSJ6vKuSquaoBXWFMCybok7GABO/5rNdG9
         W8hLnu8MJNQSN7j2eEmBwcUt6i8Di1Lr0gr42NNWucsJxusWYk/3btAHapcPzADLiCEh
         PsRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=8UJEpzp7aFj0cSIO3PqLSr1gOhXStVrgpRTD6fkyr0o=;
        b=xK8k3Pj1eFHV6ykAIGc/xISBY211dRfa0P2MPgPeW0ugW56r4wcN+CyD/Z3gQQKLAt
         D1NmG+8V+k4+Yn6Gnr+yCc/exGEiD7vmdj+FVxTmpXaiMU4H2u1A9DrQnmrYH6fiQhTq
         rrcaJ1nntjhcmSnChwnTShKjlbZr0gLObMFblFdOPvbcjMbfYRHNNhsTc1de7jHr7HhF
         nyzx2oV7MPx8j5L7RQyqTfFjXblaZehX9uaZkoH3uokqTS1Oeq6SiUG+AU5TdExom/OY
         zOnRvL+5AEXOgbr8LkrY4TZEcsKKIUn65sa7CCfsJZuQUfEBxWDP8uOVjJatHo2N9jRz
         pHZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8UJEpzp7aFj0cSIO3PqLSr1gOhXStVrgpRTD6fkyr0o=;
        b=nKXRhHSRilofpbUXXJcSyfNYW6IBjzc83R3pfnsecwkBsXLhpLnatkYEKcc6ZaUklg
         +gM8AzLHxwkGNWIF5tlH6zCHzFLy4saJywvw9cqrw4/c2Aq6USFMKgi9k7RFTKF2QQpZ
         LfsQgcH4C3m3iPwYayuc4MSQlsF1otUdIr5W2MeZA8NcWvrSo5eu2NbHHptW+ZuiF/Eg
         IrVE1tGmk8/wiIgS/u43s93b0G7eJ5rzR9eeX1idrTMR6B/HjtD+tARyiEGuOqb8REhW
         Lgxbd/NvnsrAfELrwTb/9BUwiOsvTcsxFAFRT96bbG6/woVhSKylvicrxsmpjCzQlGZf
         2/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8UJEpzp7aFj0cSIO3PqLSr1gOhXStVrgpRTD6fkyr0o=;
        b=VDN8ZzIjZt2iGyTHD6GC/NZqOc8aI/12YZYE2ficJq/SplwS6jkVC5ragvBLkxp/lj
         6bq2fgU9+ZlaGasFysNv5DjIZtbsYFNq4ARBlkfGqPlhXPKQaKDS/7WNqt2U/uAxuKg0
         99CFK5uDZt0LADqN3hTpPi68ubEGWcEhWb6nGBRAxuwwL/J/QkLr4zlvccJ6reLl2DfA
         xETj2ZrOGjF0f0rx56orzYqV1Te+RArwgy+x1m00YtgZYV1T3567b/WvnNEjqEMC/js2
         tnx2kzk076VhI6l76/Vc9crO4zFa7Fcsoax1g0nv9SziAEPKymcMFvdfS5xhxcoQbCYG
         BksQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333BUBq6YsKmnclYpbCelnJAAtHa9s40OVIUFlTAU9mUVou8USX
	7/q89VzKnsiqqOzoEYWDQV0=
X-Google-Smtp-Source: ABdhPJy0ZkhjowY0YoDu0Ns8m8/+mVA5BwqF+5iL0Lcf1TtYpYWW6sDU0ovmeCC6uKQv4wVjshZ6Ew==
X-Received: by 2002:a9d:7a99:: with SMTP id l25mr10197294otn.97.1622981542361;
        Sun, 06 Jun 2021 05:12:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls4015853oth.1.gmail; Sun, 06 Jun
 2021 05:12:22 -0700 (PDT)
X-Received: by 2002:a9d:6255:: with SMTP id i21mr10473002otk.284.1622981542021;
        Sun, 06 Jun 2021 05:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622981542; cv=none;
        d=google.com; s=arc-20160816;
        b=I0lMPusW7D7LDup7GzxqRAal94M5y4pkjuOvd6dlYKJs3UHxjrxxH7X5puW7Mbp1ay
         MA4yU4lt8mbxQhuWjy+cRxj4X29FVKYqFfVdGL3cdI+tuTTOuN/Kn87kxLdZHKUQuMM8
         R28N+aIedpRYg4evNMd+RTXHAjuJ38axdbafvDYgpgmrRlRw3/Azq0466duwSNw3FPCI
         S60d4RdqSCaBZiR7FyrP7YGCM/yAYp6tj1TsLaqPIE11qQuzoyZIAY7FnTPtY41kZ/7p
         T65+3wScbt+k8waZWGlKEIFlzcJ7+NP2CJpag3mqq7caQa4lM8+AxLFKzfSdeWVZGtoZ
         Wcsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=9V3wcQ21FJVEca9KqM+/VkjHwHBYROZ+OxGsyrO5Fz0=;
        b=oQC8Nc7HiyS6xY868+QCFfNsxXqbVRVzIqnaGZZqXE7FBRV6LMXPyGUmc1NcPcxtDH
         0t/Gv0k/OQLr0rd37xLPFVQUAhN6kAfvx9jfdkLn3otQ4i8l34xeXXMCGOxuDQU3wNuW
         JJDhywSUVsY2sGNWCMJir3fbV0gdFEfqupiSPJ3Xhe0LzL+1woOw9bPvaC0RWP73J+Sk
         l/4r4IYhkZEfPt4YN9/fn/mUwYn6aPLIQkaZiHiWdazS2O3gnAwxHB3FVzu5nSZ06K9n
         65fH61V5w5cajMsxEQIOsM7ruzeG7zsG3v4QD4y+MdHbsYVPJexQ2WU+Q6UtZvOtTg2t
         hA+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id a10si1039017oiw.5.2021.06.06.05.12.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 05:12:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4Fyb3N2vCrz9sXh; Sun,  6 Jun 2021 22:12:16 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>
In-Reply-To: <20210518205858.2440344-1-ndesaulniers@google.com>
References: <20210518205858.2440344-1-ndesaulniers@google.com>
Subject: Re: [PATCH] powerpc: Kconfig: disable CONFIG_COMPAT for clang < 12
Message-Id: <162298132108.2353459.12234342332245763294.b4-ty@ellerman.id.au>
Date: Sun, 06 Jun 2021 22:08:41 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Tue, 18 May 2021 13:58:57 -0700, Nick Desaulniers wrote:
> Until clang-12, clang would attempt to assemble 32b powerpc assembler in
> 64b emulation mode when using a 64b target triple with -m32, leading to
> errors during the build of the compat VDSO. Simply disable all of
> CONFIG_COMPAT; users should upgrade to the latest release of clang for
> proper support.

Applied to powerpc/next.

[1/1] powerpc: Kconfig: disable CONFIG_COMPAT for clang < 12
      https://git.kernel.org/powerpc/c/6fcb574125e673f33ff058caa54b4e65629f3a08

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162298132108.2353459.12234342332245763294.b4-ty%40ellerman.id.au.

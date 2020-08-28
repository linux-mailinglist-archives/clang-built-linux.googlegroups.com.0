Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB6V6UP5AKGQEDPBZR5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A72558BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 12:42:04 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 73sf354783pfz.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 03:42:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598611323; cv=pass;
        d=google.com; s=arc-20160816;
        b=yfbcnq31XqJipwgXTF9ItdV+QCvkTaksqjy7ChcoFl/6ey/Yw16GY7UxkR38FoF8/o
         S8iId4C49hps2FMa1b8CRW/qGC+J2EhGFHk+40AK9B65Rj6sooE2Qmp5riZzIWQm1qw+
         DbPLDpCGjamLcLFk+vCQXq6AA9O+5qJR5TtMBRhmt2DPxAdcwzxMonHeJHCP0EDHyMvb
         IOrEcqqYWNcucv1qPX7fSgSXq9k4XMB7jj39IkUNY8yGgUDq3eGB+IpXGMiZm6cnMAOF
         HPl26mRyqiPzzWDMEC99wB+ZqrabZsETwkwKV+Uiqd5DwIArMT8T0EMUkRDM/Jc77BYG
         F4mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gh9Vou5KjqiANzgg8NUG9x432/aXiKGZA+mEf+UlH4U=;
        b=w5B/aqSZpncgCyTpU43JfFBUr+T5VB3ufWHakcn8zX6joPZTt5nttPu3ySE8jStl6u
         TPoW5Cn21e9PKKKvFw0MIy+XgnYHX57EsSPW4qJPBn1ONB/VUqCbmwETCIiz/lht2teB
         m5hu7OhLRS0Ukek1IcxiCQC9XoPDzbO4ynsNTJdGeMcZs+2+AsQKCxHxtFaY+UYOQqHg
         QX1l7ooCSM7dQDQez6GOG90RKdwNabOcDad+6/FT6/KtS/LDY2Eg4ECXnOdZ4T9FuyS1
         1Gl72GA8xn9hbQ9pp7K9bMIwFzD+4PaemN6GkNlD0I+X/DksXtiivD8XvbrIec79JvZk
         3s9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmainas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmainas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gh9Vou5KjqiANzgg8NUG9x432/aXiKGZA+mEf+UlH4U=;
        b=OXheFb26LSKgp6mljQNVYHtHerXEFUmpKLl/Lnf2sRtG+7/VRpEQEM4F/7Y1XnyTk2
         qcxi3VNG9uWkpl3G9rLbYrBoaO2U/kixVEYp//s7hSnZZpvhCBJMCDVlDpPL33je8me9
         7G6xbF08aHNKgZwqHk6ZJXgMW7RuhSv4G+oRBC1xwyWGpoAWahDn9MH4P9UDttzYtYOc
         AFknl+YZf5BpHYS3NwkZ1zNoqJwihtNs09mYfAskQjUtvaVJe9REKqweUGpjvvDSsZKP
         wHjA4bbjUNL9R6tWRsbLfkAvPZoZXpqjyS35YFCtw6C7ZMKpUf5ADp2iqWgYenF/NZZC
         ITkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gh9Vou5KjqiANzgg8NUG9x432/aXiKGZA+mEf+UlH4U=;
        b=RL5GqHc2vz3xxYSrzTKBOHAVfwFbkgrIUOreW+EaG3ZkwaCIjacwPTFxeCk7ixy/vj
         4mOjlzA9MtfifdbBCWKdVkKUIqoe4z+ET27P5bAfOIfrs4/ys5VvyJAYv/w9xQcz6qQ4
         bHZXHFnTHwjoEMoI2Dz/vWy6GgKd44mOXDPj1hSO7ZzNLKijg3TnlVhRlEtizPmZgxYc
         HDSkdF14fbMHP8WBym5nsqjE37rdPjhkKZqeLEygyHQW2BBM4+UmJySNs7xLWkbsIXhC
         x4ie3+96LaNNB95f458QD45U0SXljOcJxSX54NqtJRmx6To5WdU4HKzt6psiuQ5ykVGc
         cugg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303LgQDR7kSp16IKmRy8Dn38CmA9Zsz7Yu+uubZ8bfu5eEGD4l6
	hZ4/762y6SPc5jiiyEYLXUg=
X-Google-Smtp-Source: ABdhPJyqjo4Uen6ugN5yeOCC7Jfjz1yYw8tv2XeyP0/GjN3MCIICvWZYjUE6fkSrOqZ9AdaNhFyR9Q==
X-Received: by 2002:a63:3e0c:: with SMTP id l12mr812176pga.190.1598611323082;
        Fri, 28 Aug 2020 03:42:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d490:: with SMTP id s16ls423926pju.1.gmail; Fri, 28
 Aug 2020 03:42:02 -0700 (PDT)
X-Received: by 2002:a17:902:9349:: with SMTP id g9mr816381plp.313.1598611322520;
        Fri, 28 Aug 2020 03:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598611322; cv=none;
        d=google.com; s=arc-20160816;
        b=pQ05aA/Z3xiie6G8TkC7Agoq0wh6yHK+Y0ATAqBu1/aSCtgOH9dE0mSagbYELD1HQB
         oEOM8hraJBIjqLR2uw0jH4hBL1P2hplId4D1KDSg4vWFxeb/rGBvIskPMLRfH97iZUSa
         o0i3keekOJ1dC1K77qPxvOnV2Qp93RFuIneS2xlOIuxfP1a6kUX7XXf8Rfy6CY7sHQTD
         1X5N41DYpIA1pslpBS0ukDknEJR7OtZgpvZsEinrnVaZCNz64CS9GEJkXdb8KJiDVQK8
         bOJMqtTqOdhQ+5H3G/aUWgaO9lPXQxCiGvazHdv46Gqoju+Ncw2h2VZ0cy1Mu4j1jZcw
         JnRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=NJ1C1fn0MJ1iOkdhYk0aCWGgaM1soGD7KJoFvH9anb8=;
        b=j9vFPM3zs5A5Wwehu79RFNDlrTMfN4GNK0SvuTA6vKO9QKL0tz55E9ZVvAc6O7AIGO
         HxgGNliQBgNLvJSvoL6YvlV9fRrqXdgMzpjfJNgmKN8sqWZspKhK9taV2cVAZoNEGe66
         ojGpUvrt47/NL/VPH2Ew6+bvFwYzKXSc13dyRecTUAYCTVlav0mek8CpV00/Nx+iYb9b
         EzTAIlqX7JfeZ6jhr/FuhJ0WTmYWP6qQmATUh7jhQRc2jHIS6rtONvMwSNuoWhnTQbgL
         2YjwJxVdBHwlJDfaqlNDKlEZA4P2tchiUHD4xABmB9VjS6Q5XqzOCuXis8LaoaEZMGcN
         7PMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmainas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmainas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g11si34240plp.3.2020.08.28.03.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 03:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmainas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [46.69.195.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 300B220B80;
	Fri, 28 Aug 2020 10:42:00 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>,
	Zhenyu Ye <yezhenyu2@huawei.com>
Cc: Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Mark Rutland <mark.rutland@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2] arm64: use a common .arch preamble for inline assembly
Date: Fri, 28 Aug 2020 11:41:58 +0100
Message-Id: <159861130822.26090.515756118612731592.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200827203608.1225689-1-samitolvanen@google.com>
References: <20200805181920.4013059-1-samitolvanen@google.com> <20200827203608.1225689-1-samitolvanen@google.com>
MIME-Version: 1.0
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmainas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmainas@kernel.org
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

On Thu, 27 Aug 2020 13:36:08 -0700, Sami Tolvanen wrote:
> Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> LLVM's integrated assembler, because -Wa,-march is only passed to
> external assemblers and therefore, the new instructions are not enabled
> when IAS is used.
> 
> This change adds a common architecture version preamble, which can be
> used in inline assembly blocks that contain instructions that require
> a newer architecture version, and uses it to fix __TLBI_0 and __TLBI_1
> with ARM64_TLB_RANGE.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: use a common .arch preamble for inline assembly
      https://git.kernel.org/arm64/c/1764c3edc668

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159861130822.26090.515756118612731592.b4-ty%40arm.com.

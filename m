Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBBMPYXZQKGQE2IPXNLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C17B1890E0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:56:22 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id s6sf13455633plp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584482181; cv=pass;
        d=google.com; s=arc-20160816;
        b=MWyELt8+9dGUyemnoi3HnjsdznQZuKuzBXYLa1kBF8rXZozPF4X2JtCQmj0zxRCHZb
         ZxYXmEcPPF2YHyGQvDUf5UPjTdfXT2IpvHeJGkZ/QWAD9iem27jsidX5NcZ8OYmJo1LN
         nStIpsZ0p8rEOYiF6KX7NL0lantlNg/nkdTt/brkeVkKgi+WQ0RHVHerLaq5XNnJgv9Q
         n1UA8sUu4yv78pnXMJcxzsM7BSviELVIRJvaRyO7In7PmQOmGNVsJGkdDaKw/LWY8Yc5
         gr02xXJprVOeMj5gaFnqd66wEBJCPVlTJXOoFpxQz1UPfeSux+eLPHOmfHuYK5/rPxmj
         rXDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9c+CX8m+HjcSiaXbRP0KphXvICkGKitJT/yJ6osLdIY=;
        b=hizZeQbh7xn5KmrX9yWdfFG0tSnS8z9KuqeMQ0J4o682RUYerdGSaFFwreqV8izP9i
         EYnXjou24nnMUZSNT1DGIHETbcu+9SmO+dW9UeigXarPoFdFW+JDKEdv37uZ+x0x808h
         GD5r16R9YQdWEPQMY5YI0wPLmnjjwLfjz3XdYUDOXhR/8iGvfRfibeJIRrBQdPlTaqD/
         tipZWlgrPsH+XgL+MQP33aFAv4KLbEs6ai9TSgtfLPcHSU8pBu1I8dswGjwl4QUYW7gG
         CzThgZ1BOn0xcip4kteSz0XB84WTJZQAZH28ZSGYTWtvrEPESjj1iOjrNT78yl3TNwL3
         yF3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n+jfY58+;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9c+CX8m+HjcSiaXbRP0KphXvICkGKitJT/yJ6osLdIY=;
        b=ZHDV9v+QT5wLbjMxEtJjHdqjpgTNQTZieRN8rlKL7Pz92sHaznD8LZQkUj6sO7MetU
         FSIHen++zkgk7lYjHS99eNdOMFnda4kevr/GoBVyAjzlTQGzWEcZcLuURLHczxbdr+vU
         8e6CzieGGeUC7pRq6aEm931kv9zeq4qwiZXxj8YZpRfZirxnd6UL5Bk9y3oPaXGpY0Ji
         ZOu3BHrIdhEwJd4uNceR1FJOYqZcaygorPbthz57s2S1DzYkFCPsBQ/Lvzx+vkJKeC0y
         QLwa9YYUfYGF3YHC3KfhVlE10xNetdwqRe2dzRnRLCuJqWehOCY7WK3rgapaSARPpvmJ
         z6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9c+CX8m+HjcSiaXbRP0KphXvICkGKitJT/yJ6osLdIY=;
        b=ZP94A4pRFzBY+lxRO4sae/pLrwHbaoy7H8wlzBTNUxpNR8r4NkI+l/go1r46PF/joR
         JRcPQnQTaJWG3cqqTl15Aca00RpRdqk7udJG+uqSsu1A/KmQ/FdBkD1VP9QPqSa7ACvm
         ipAeBL7heFstuh+weRc2KqB8djThXWs6bdVf27g0pgltMxpTZkgKu2MHhkawYFyeM0Qx
         HjCPBYp6GmpTeQtgBJAWweTX8ESjlxCFj2dFmMlRzXUSGiZ5GBPnBBSYa1uM/aDHf7KN
         peZnhfZpwHoYpvRh0LKcgeln3MBQwJAXiuAxzVNLSOiarz304SQ7gdf1ELS+PAp8pst1
         Wqcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0uLnofTpnxZ1yIn88UU3THukQVCuUuLnY+uNtU4PWfnVQJHwWv
	9p1Z9mIPMVbMUW3bWkJolHY=
X-Google-Smtp-Source: ADFU+vtN6Mns/oefjdZBmSNlsocQa6E8HteFv3PxV+eWPoY5SILm/I3IQkbc4cVK1D+E7ekBZb7xkQ==
X-Received: by 2002:a63:161e:: with SMTP id w30mr1294175pgl.110.1584482181094;
        Tue, 17 Mar 2020 14:56:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls12537299plp.9.gmail; Tue, 17
 Mar 2020 14:56:20 -0700 (PDT)
X-Received: by 2002:a17:90a:bd0e:: with SMTP id y14mr1352948pjr.11.1584482180720;
        Tue, 17 Mar 2020 14:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584482180; cv=none;
        d=google.com; s=arc-20160816;
        b=OnCR+xUjysKv8KJX2EqZkaApW4YosZNhI0RefO8WBNOZlNyEvY2D95BEqTbEG/+nIT
         XjXNdophV6yqxwEcq8Q1Ud5iZMSrTFFnh7YlzlVmY0bBDD1nILg12yyet7M7/BkcMHtt
         KQsZlTYn0QrA+zoY/rsDcxyiGXriIcIUvVUphJ7glREXMC9O796uL4aj3EpzC32r8ksx
         uesUr7jHLKdx3zO6ep8S+lKW4dZtWJ7CaXwFYOmx59bbuogCeP6HIM3fZ8dZDwTL3ZOH
         6WBgi6du2o5QurrmTOWxZAyb5mIdiVFwe18MLS1dEO8L0eo/O9C8bH/k9hq5FhvPdDt5
         DWCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vPAkp67jZIlZ9c61D9IR6RGYR2lLUi3psPO/JF9yGIA=;
        b=PX6m86fVz4P7Mm/0z4dQ9t1elJE3dnhR/j2+PdEIpq0Ijz/BmkyUjm9XIIWcwKocau
         ho6Mrubsan3+EVxhyhwo/7vWsT9Usvh/txMm2MJUIsjbMbdhb0vscvgUdGZrnNqQJtNy
         fvao4lYZgdy2m8DP0vGltF4Eb1gC9TtHiyzDVTtGUy7P773SvSxHw/b/tiLiDBLxYK6I
         YYvbmVNj4ige45ztFno5D2MZUU7a5gdSKhQP4amfe02pvbEYG+GRvyaOmg0I+aEIGFaf
         rt462IYxSl6yi3ZGadoF1gLWH5a5IgUtiiUIwHgdd7Ittro4LJ5zsfuIHnT5tm8FkCd7
         9gXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n+jfY58+;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si359085plq.5.2020.03.17.14.56.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E421420724;
	Tue, 17 Mar 2020 21:56:17 +0000 (UTC)
Date: Tue, 17 Mar 2020 21:56:14 +0000
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/9] arm64/build: Warn on orphan section placement
Message-ID: <20200317215614.GB20788@willie-the-truck>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-8-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200228002244.15240-8-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n+jfY58+;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Feb 27, 2020 at 04:22:42PM -0800, Kees Cook wrote:
> We don't want to depend on the linker's orphan section placement
> heuristics as these can vary between linkers, and may change between
> versions. All sections need to be explicitly named in the linker
> script.
> 
> Explicitly include debug sections when they're present. Add .eh_frame*
> to discard as it seems that these are still generated even though
> -fno-asynchronous-unwind-tables is being specified. Add .plt and
> .data.rel.ro to discards as they are not actually used. Add .got.plt
> to the image as it does appear to be mapped near .data. Finally enable
> orphan section warnings.

Hmm, I don't understand what .got.plt is doing here. Please can you
elaborate?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317215614.GB20788%40willie-the-truck.

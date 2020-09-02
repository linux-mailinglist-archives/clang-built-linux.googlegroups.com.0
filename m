Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQUSXT5AKGQEGNUD3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1DC25A32B
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:55 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id z5sf665180uaf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015234; cv=pass;
        d=google.com; s=arc-20160816;
        b=Us4rI9//gJkdauOs5wdNCqCFOmHAh+1e1cNrxZNl4RhkOKejWnlUJBzupgtzRK1gTD
         Yw97baG0TYzqm83tt63RsGvkrVStwAFfCe8MpfKAZVfdsi/lNAFRXz3pyzGoR3f6ocg+
         jCXsdTo6G6erXsFKFfXyEFyepBHTRIZnmtwSLelpZfbrqpQ0DuhdogB7Czeg+rXqGgbh
         iw6nLk07DGFUyBXlI2P9A6CU5M25DQvLXZWBS5Xi4TnV5XFoWWG1255NQbOzs7GfKRDF
         ti+kCRawsYr469YvuE7nyFCtqEsCXG+1eniN5zS1L4hQTuaI2nHd5yN4AwgwofmDgsvu
         QNrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=W2abM4a1lck51AyQY8An+g/IfGRI9qzPEsV1FzNotrc=;
        b=LmK2wONPmQM0PlrSN4l2Q59ZQCrG9lO0d9oACAoV5Il+qNH0Z53NxvOrt3MHwVrCFg
         Z0PA/M8D0/g7W5X+P0fmYN+DDqyIiodY6v5cQ+E47s1pj+H3Ob+NcjdbG/qaViFhbA5R
         1vEIWH/Lja5pqp8cOIjYJsfcUlBgqc3M0g1eXORp1j0ezQk4d9sqzyp4tfRIeBwE2+SH
         lgZjMceKB3Fny7LmOFvJU6AeyUbfufI7KCWe/G9ZHs7bJqKnzcaGgCakFyd+WDytx1UE
         ORJY3HZPVtIIhlCx+4835sl2MCRLgjb8BcK0Av4MU/nwDFFPWpPh5rAXW/7UHLwp7oEV
         y8oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RHjhmExy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W2abM4a1lck51AyQY8An+g/IfGRI9qzPEsV1FzNotrc=;
        b=YBx6/MXULh2tmKt7rN83lvu2DcP182ejEp+Hpifd6XkCVE79WY44PB9Qa9R+y7l8AW
         Q7OdVsBuV7PVwxo3hApaE0YU9bFkyeMBpCwPiUfmyR6o4f0S6pAlUUYw3ZI8fG+XDpsQ
         d+KGKuvE8zqnSrz8E/cfkHQg+Sd4Yv+3R8foeeRdFRzEvC7lnzg8Tepk+xwwqllrWW6I
         V+jCL/FnaJSkv7Mzj96e/grRzyDminpflLmibS3/rqmnwXIsfBK8BMPIzwMguG/j7LEH
         OwuNJYHLJmIROTDBlD0hTvyCH4KYr/fhHw3QUWxfUkGdFy5krCDOIcDkRUaTq95pTKQ7
         tYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W2abM4a1lck51AyQY8An+g/IfGRI9qzPEsV1FzNotrc=;
        b=URhQ0EoJs5RLMLegdMxtmDEkrIuHY4Ux0cQFcRUJbU9gS/AFxJ177SdyvzWnuOAL1f
         EJmUBsF56p6xt4hnHCS843OUO9wBC6D8ue4PfDKlMaZ+auOvoIVCTfDMbHDoR4htFm8J
         WGdL70IqJl3+IojVVTji433TgTtQ7KLS5TBuBiS7CZUHZvuuLTXM5WVij/PEuvfFFSgw
         xITle75GpKt3EFXxmAtmkkxYp8mQtuqzM+oHDauXY2ghdpTHYUXSi1pBKBQCFoH4LRjk
         rY//R62cn6hJR8SIeeYZApPbRx7Y/yvX/DYz5bwhuPC12330zQg4dvqvjca6pe6lrBYu
         Sg8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309lYP1QewXZscllsfwnp4XmJlYAe2MvsYGZxD2DFeF6AJeBYe0
	fjeiUrITrIkLsQ/EPUYLdOE=
X-Google-Smtp-Source: ABdhPJw7ulAhta5twNfOazs6111+LkUC2/4zK5zkd7lNcE767NAG0h977TyZg174oQAqJ6L29tVN0w==
X-Received: by 2002:a67:fbd1:: with SMTP id o17mr4381693vsr.19.1599015234387;
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c797:: with SMTP id t23ls88704vsk.8.gmail; Tue, 01 Sep
 2020 19:53:54 -0700 (PDT)
X-Received: by 2002:a67:ea8d:: with SMTP id f13mr3486380vso.129.1599015234052;
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015234; cv=none;
        d=google.com; s=arc-20160816;
        b=o7xG6mDqKydRIE9D9e3TW9ed3J2geeCZEEMjHX4es4MJ1gOT+5wkScMPjTBfv7QU5Z
         kaTrpkmRJu+JgAoHoGSr7WBwDSW9pjDNuIW9kTBd1zd8T3/MyOuNHmewGmq26bnaLOHn
         RM77DKhWfrFLB8LvmqDTiV5XH1/j09e4oF4t3C8uhq5ETSJFoQ4NuB0FiMFbXdCwd7Tb
         wlFHo4rtQYVPMVFjK6jCZgR9fQ34jy8A9TMgTLvqHeyLZr5VbLncP6AExC3aMLvj3qjQ
         cjmATdnfwAjp6RufQ2gxd/opSaqVPu68dQf0ONpSsPkau7TAFLzfIb0FKFIVXdm72ETq
         +41w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mqktUKjWMSHZ7i2u+s16x0sbSP9VPDjkmXRnw4GPeg4=;
        b=ccFEffRRD9HY9G3X8QrGlHsQcrxd/rSaAMv9UkFM/STa/igGpoDbAS80Gfp2kSQ1I+
         ifRWwvuLDakUvZJCy3EZn8XC6VX0FBbowG+z6njPJs3nxF6NffmjpzLJybB610vGc/tS
         /iadD/hok/AiTt5M4V6js4Zbv8qLcDbentPAoVYPs5Gh3cycNAI811kuaq4pLyBpV5zE
         UlyaozHJwqeJhBD6hsQhRuR3DVV6YG0oWOhu7It757EPOl/2F04ioTPDKmS5+A/kwVxa
         +H9c0hHDw3oIFCb0nSd7mNQ7XlGqpFIm91k3CphPkdZ2ajC4dFff0KQ3TUx7A4kZgnV+
         pOYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RHjhmExy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a84si134774vka.4.2020.09.01.19.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id x18so1580396pll.6
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:53 -0700 (PDT)
X-Received: by 2002:a17:90a:17e8:: with SMTP id q95mr220525pja.161.1599015233232;
        Tue, 01 Sep 2020 19:53:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k88sm2949999pjk.19.2020.09.01.19.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/5] Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:42 -0700
Message-Id: <20200902025347.2504702-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RHjhmExy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

Hi Ingo,

The ever-shortening series. ;) Here is "v7", which is just the remaining
Makefile changes to enable orphan section warnings, now updated to
include ld-option calls.

Thanks for getting this all into -tip!

-Kees

v6: https://lore.kernel.org/lkml/20200821194310.3089815-1-keescook@chromium.org/
v5: https://lore.kernel.org/lkml/20200731230820.1742553-1-keescook@chromium.org/
v4: https://lore.kernel.org/lkml/20200629061840.4065483-1-keescook@chromium.org/
v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

Kees Cook (5):
  arm64/build: Warn on orphan section placement
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement
  x86/build: Warn on orphan section placement
  x86/boot/compressed: Warn on orphan section placement

 arch/arm/Makefile                 | 4 ++++
 arch/arm/boot/compressed/Makefile | 2 ++
 arch/arm64/Makefile               | 4 ++++
 arch/x86/Makefile                 | 4 ++++
 arch/x86/boot/compressed/Makefile | 1 +
 5 files changed, 15 insertions(+)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-1-keescook%40chromium.org.

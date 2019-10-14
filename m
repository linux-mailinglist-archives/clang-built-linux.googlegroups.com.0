Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKOFR7WQKGQEPOAJOYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E339BD59A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:51:22 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 206sf12917122ybf.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571021482; cv=pass;
        d=google.com; s=arc-20160816;
        b=iVKxnu27iOZwUEIIbn2vYV1eHBeZ6Srp24bjKHHLahgnLcusurEBUhDosXAvl68yTo
         OUXh5Bw7Q/Oz72b1XE5epaluwJZ4PzT2J4YQnDtz07XiIg9QOGD6CYG9zqr4swvwclmr
         l1kiPJEwi4JKoEPpT9R35yaV4fy1zb369TT8NdvdVmM2uiNqEtXq4O6Ji3+GNE1B4VIS
         plxX6TBE3PNEywdidmjMq8xCEdjY7vjnYdRiBY7/KvzWAq2RjFXRvtGHyjvLYRkH7NTu
         i/3VL1uPwRaVCZkF2Ii4IR9fTTE6opIm5Shhlf8+h9aBVBOATZrhwQtoydxp6m2JgihW
         snnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=c73XpYy23TBvWP8t911VmdD2okqlqzHeMcDkPMy/OM8=;
        b=OFf+AKE1Lmc9Y7KbuQqUFoeZQVwTGhc0CSeW+pfHQujGJnh0h7rrPih7mcYZv0ua0N
         x1q2tbo3LgynGhy5qNrYwHt3M4gWo1li3bbTKzRv/CqAoNEGg3mobKHUNSrnDyYT4W3c
         OGS+1q7DVOvqCaeiyNRQniVBCCIa2LUkJ1p8cDyWoeyOS/Kxk0/gfGN7y4rhWlVeKfJt
         O5iUXzCtqltMWM+VbRpPzdFtEMDJkz24SV6EVVNQVE+lC1v+//qU1/6Jtpc7/dK8xU6M
         rOJO4UTj6nLc7TC7a8DQbpQnQq0FUCGjwSVsLpNFk5ZscqQ1q7eOzmuVkurOvPW3NHcK
         wmqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlO+lnqn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c73XpYy23TBvWP8t911VmdD2okqlqzHeMcDkPMy/OM8=;
        b=ZLwETcGGuHgvRDscd5GhFTd7lI5w9cPmk9bNHs1dPF19m6pFBraZZiyjymAQU/wkZg
         c9vHwJPJ/CSlodYyCNdiNRjz9tPL//TcYQFzfXMc/QQQmUzVJiLfryXgFg9qRZUEsUHK
         H1tSCZ5fteLKRfY32Oa3ioGEPAdjRtaj2BY8VfG2ZKmcz8jXBqAdCERe26oYBkzhin0x
         10czgMEDCDgnC4C9wYN4eksarSHfXyM1MXoAoazTAyhQkyNIoFFwTPbT7O8UZbgJ3/Cl
         Fh3iLA0o/BXM1Ip8/TDolyyd1vxuhtHEAtiNUf6nR5U1TLm0BdHV3uDN9pLKsj2GBqWn
         cvVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c73XpYy23TBvWP8t911VmdD2okqlqzHeMcDkPMy/OM8=;
        b=h3Ynh7klqUhEOz73TmO6sPWwcZ0jx5BDq+Q4MFSi7MvLL/NABfmRFGq05Rl8isVbh2
         h8HTlG3bzWqraiUvbxSH4aOd1tMWwkArBCDvkcKxv55b0cY+nCXc5GPLVl9iznNNzFUe
         MHvQVOWUe0ZpOqQtQk+JmzArVOyWirugcXlKbrjjizK9l3h343m9P0oXYbLGEJ8R2R04
         iSmE+zPsNUg2Jl/yqth5vp8RgjccD4HW2+QrqnW0hBOH8ScRhuDSFLnk/TV5XJXIPPzT
         w/oGX/pU6hUmH5vZip/sOX7oN/707cUbLjcTFhejkoGVUdI7QmIQdVxnJc1BBSHU64fq
         TAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c73XpYy23TBvWP8t911VmdD2okqlqzHeMcDkPMy/OM8=;
        b=o2IZsKpubcLbF6K8ZTjWSh7iTqlIKGfzVIfyuMIHyIj+Jt8Z/Y2MKo2/yoL+EyeLTD
         fMLB9jN322gZ6wy0FVpm967N8NS5sxLvjF5fTfDW+fKgDDwasRPmOIDYgSY5pjyldY4n
         y1MttsN/qW/uQ+HPkq3K1vDx6s+xxvNjl/5EqliU1MIFBlaDZf5XEK9AjB41jyAu/qiY
         u9ARHr46VlZwLKNKn0Lrv6CugJB51OOke8Zid6PyXdPM4n+y1ufm/Bf71ihJw6Mf5YVN
         Wph7avYP2uga/0foFTTmJgnIgsalXAlnkJCXDZYpcltHpQ6BJCoFs0vgI9PP+d/DrWu3
         7A6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYGMJ4AfZdp8cMdkKos0IK7AuKEVrnj/OOkqGS8CxpAkGz9A7K
	2+L6iqSJr7tRG+F5C0xpBz4=
X-Google-Smtp-Source: APXvYqzUgfgoWoqUisDNwRVJe71sMWmaUwvPdO1u0RSeU9QzeHQ0YohK3dKlhvsJGUEB9N0JSXH3yg==
X-Received: by 2002:a81:8493:: with SMTP id u141mr10936083ywf.203.1571021481908;
        Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:ed08:: with SMTP id k8ls2235367ywm.10.gmail; Sun, 13 Oct
 2019 19:51:21 -0700 (PDT)
X-Received: by 2002:a81:2a08:: with SMTP id q8mr11988817ywq.195.1571021481078;
        Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571021481; cv=none;
        d=google.com; s=arc-20160816;
        b=W1xug/5/aTAU9IfnyaN7aspcZ4zhcOu2KKr+v1DSurb67dD2nxyk91trewQalz4YkR
         +a/Mgi22JB/rOFjZvkSwQPy0UVc4EnXsUY/iRca0NekBd+zJNqdaMUICKqIgkH/ALSUu
         1vO9/IRH7sZahL62NQYa/D9x1a811r2TeG/Om7YmQ0ukLeKaqL0gJHv1azLITtkfQp/v
         L4JE9QdF78ED7FRmCaiRLZOQWLDkBaLCkuvLhDo+T2KswHQw6MgQ0yy6a86PuJaq2DxK
         AhfwEXuPhVvFW3FNIJ+n1g/uHS0v+PHQn98CCETqQYbmifutQHCM/Kyv4D9rzf+S0luB
         e2+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OqhQeSDaocWWcugyUoJesGShn68jf9JC9j/MN8cXVt0=;
        b=OIsZgii+KTeKQSZaXgiPn/oP7aeTg68OO8BsEF/fyzqJNuCkKOkYh/vzqn1KWZwtVP
         PjAGfbwbvhLWh6sVVq2qGGPTB/svmogFgz+EgVzRXEU8XhQtkj1xMjXKj8PUPw0a5tKm
         xsCrESPF3z6nKsDcVuocTF9rU3rZyC8HRlQP1b+odmlEOevuJmCxQJkrKMVmDwQEqtU7
         j9OypUYr5hFpCuFs0MVy/LnNsT/efdViFUMEyj6B45nEXXaYFRllEkIZtDzIZgthOo6N
         mKTjv0STt148o0/PXoePUUa3E8of4ODdqKteuicAZw+D531G07wXUPJJUQNsFCZHxPZw
         4IDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlO+lnqn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id a1si1119384ywh.3.2019.10.13.19.51.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id m16so12555872oic.5
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:51:21 -0700 (PDT)
X-Received: by 2002:aca:cd0c:: with SMTP id d12mr22781772oig.25.1571021480513;
        Sun, 13 Oct 2019 19:51:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm5612491otg.62.2019.10.13.19.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 19:51:19 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v4 0/3] LLVM/Clang fixes for pseries_defconfig
Date: Sun, 13 Oct 2019 19:50:58 -0700
Message-Id: <20191014025101.18567-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911182049.77853-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nlO+lnqn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

This series includes a set of fixes for LLVM/Clang when building
pseries_defconfig. These have been floating around as standalone
patches so I decided to gather them up as a series so it was easier
to review/apply them.

This has been broken for a bit now, it would be nice to get these
reviewed and applied. Please let me know if I need to do anything
to move these along.

Previous versions:

https://lore.kernel.org/lkml/20190911182049.77853-1-natechancellor@gmail.com/

Cheers,
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014025101.18567-1-natechancellor%40gmail.com.

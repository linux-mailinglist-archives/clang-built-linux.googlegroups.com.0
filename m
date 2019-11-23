Return-Path: <clang-built-linux+bncBCDITI7XW4DRB6NB43XAKGQECEWTRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAAA108037
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 21:05:14 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id w24sf2475333lfa.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 12:05:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574539513; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRZSou+x/e1AnaIdQdtIDJpmVq9YZF0EOxWTfAlxK8brzCMz8uKyNm67tfxBl2EcjG
         5l6SPCcGqKoymEGhs7l3YudJ/BSiPeY72+mjXPUpMGYQ6VgaJTUK3vr0LF6PatYNF6Ga
         rumRz43N5u4WPf0evYqLZ+g5uWr/nBrx2Ck830ExvHzCJaJqiy/pe8J8wC6vTxjntNry
         POy5wRjguYig3Yy/205s4psk9xsE9BAaZJ+LhNZ3vHnXfVL2SmoyjOJ9Exd4Vf5g5XZQ
         Ic8E/7GGEExWvGx7LCrrbjvxWJRmDty/uc2hpM5t5o/X6mBmUmHnMNb92VWOM2zDlslq
         cUwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:user-agent:message-id
         :references:cc:in-reply-to:from:to:mime-version:sender
         :dkim-signature;
        bh=R/R1jb3ySDes5lLjeTzFk7VCjvOv526gu1QxHpfFfnw=;
        b=DpIq4OMTtXYFm4JFOAJqZ0vzt+5bgesQbi3trxXc9sV95O82KnaScRpPR2pr4MRpqL
         zwYOwbv/jSK9kdyGis8cC19Rrb30zfIe6lc6MZCMfofDoOm6TWCp5C6Pv8Jd1ktM5aVk
         XHsn8foLmOabJmX3ry77P5QlWF6lVOwaNKc+PUp5G3bp84OYrslmSw3yTQe9SBYMhr3r
         sESTHZMg3PYmFU3i+xh5n1OWa8wAvTbgpNId8T6J/KdfbEtgbcSa58p07Iic9voTU74d
         fB6vfQyXJlae/5T3KkOm9RSfQUla7TTOcK+lymCnvZX3Y62mVhFcowJD3wdlX8HwE/yT
         frwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:to:from:in-reply-to:cc:references:message-id
         :user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/R1jb3ySDes5lLjeTzFk7VCjvOv526gu1QxHpfFfnw=;
        b=NX2gMcaQNE2pPFdifg9GiWA36oMJdx1xWMXeBv7iJCUf9cPkqUvw9hnMuHfonLdxlS
         EKNlQ3NrE+zOQI++BNYlEJjtKkM42n4mUiG20VIRXSvf2dXxdVuZkIVeFztQSPW7aaPv
         OVGHh3xRQiyiQwdl3wSRP+f/O8ifoeRIVuOuFRWxjjhGIgRVEVx2yyh5nOLajMNUV0q4
         zC0vMMScF9Epmwmf1Hydt4yGg0mupB5sA4SUPzMGoUNo1YMpmSZxaRBdXWUDFV1djTYa
         SrwFJbDz9OFfEgGUYhcoEB01NN2Wo9TSJC0oDTfsppdeQc9og9lhX1IVn4SDwZNiP5pL
         u54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:to:from:in-reply-to:cc
         :references:message-id:user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/R1jb3ySDes5lLjeTzFk7VCjvOv526gu1QxHpfFfnw=;
        b=P6N/CJ299qLsHkmu83gPQIv7ehk4Tnl134Pte6UCyjEMpWmmuQlA65rjOku2NJ+YX7
         EgQnIu+GN2Yu2XqxuhOx/7Q8S6W/tiBq95QQTvyO10ETyt7Kyj2hHbRtKCIl5X9D7W3U
         JO1ppXN1xvKGLDMNnie1BrVcC31Bna93WHyRP/4CC3FbrVSv8hkyt5WsdR6cGCYib5h4
         8eUL7edICDysDq8sNdzxkHUU/5HB4IL/KSOy6+siDo4RvqxN3HMt8K92kO9Fm5dL9Xo3
         D1ZSH0kf6/kv3G9zXbWjnd40I0GneMo5b9+SXZ33Prb+gh4jRQ6rRaULhKVqpQgXNWLe
         qiIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXx+OUnyVpA7+rOCtOou4GXQRFRN4blglyRRbXruB32A04uwGFk
	JplGdbjSiFSTrC4jMHb6Nxs=
X-Google-Smtp-Source: APXvYqzyy4GZzUIJF4s37YM16YO1idOHvohGZHoy/bUvl3IOMx7C740f9AdPoNmtHyThd9IEcL/j2A==
X-Received: by 2002:ac2:51a6:: with SMTP id f6mr5341840lfk.174.1574539513628;
        Sat, 23 Nov 2019 12:05:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8584:: with SMTP id b4ls1877113lji.14.gmail; Sat, 23 Nov
 2019 12:05:13 -0800 (PST)
X-Received: by 2002:a2e:b056:: with SMTP id d22mr3570231ljl.73.1574539513045;
        Sat, 23 Nov 2019 12:05:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574539513; cv=none;
        d=google.com; s=arc-20160816;
        b=CAA0R545E88zb0z3Xw/GbBkZR5sOvyoKCap0caV2nOjgjQKa9DlVdYQzXGgXEZBpOu
         e/isX8kcFvw8obBBa69MSON1aLwRtXRRsm4BpgMDXWzd8cSiBy9OBvEFK7rYluG7Rcrf
         cdJ8+aZDAPg5EId7cq9PxNlEJ06JCj2OEU5pDOCWisuHRyy1sXQjeUqlgtc9EN0VQMBI
         jnZq2G6vXRoxhjSmuVLHjYI+nENzqxMWMf7WF9rP0z5L6XqaJAABTWUBMQI+z1ccELMt
         6JsCwA8Pv7ehl7a8peOzjolrq2wpTXWgIm+KU11XQklMSP7Pt9umtkxixFPCFLyZ09QG
         zsaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version;
        bh=jBpUCbAicm7PMHdQpRLCvS1oyseep9TWZqm7BdJgvMs=;
        b=lB/jepIS5QYZ7qDHhUDecJgZYyXdPcS2kbnoS8aZuT8qbv+Yi1e2frTNq+1xqyrquR
         vZqCjOameLL6PGR3MiXKXGWhvnSKZvizOa8td0hwJAflvUk1J8Rw11W/N0Q1aT9cie5C
         UN+BgKK13Q50zEFVsyZq2TWoHxdDboop0jnFmztMjLbRiPdC4MVMyeMF/MMlpWtoLoDi
         q/KdUHRsSUXB2S61dKIO+6cK3JonYKhGoDLIeJYKltK2U04ZXvpSYFr2mriM7GwKzfNw
         QkmQEi7jYtYKiLoeXgfOocJJkQOXn3GPOkKaaji5y3aSTbJOrVhAUvRuMv3V1hU/IMYs
         QMjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id c17si69882ljb.3.2019.11.23.12.05.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Nov 2019 12:05:12 -0800 (PST)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 19314250-1500050 
	for multiple; Sat, 23 Nov 2019 20:05:12 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191123195321.41305-1-natechancellor@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
References: <20191123195321.41305-1-natechancellor@gmail.com>
Message-ID: <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH] drm/i915: Remove tautological compare in eb_relocate_vma
Date: Sat, 23 Nov 2019 20:05:07 +0000
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Nathan Chancellor (2019-11-23 19:53:22)
> -Wtautological-compare was recently added to -Wall in LLVM, which
> exposed an if statement in i915 that is always false:
> 
> ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
> result of comparison of constant 576460752303423487 with expression of
> type 'unsigned int' is always false
> [-Wtautological-constant-out-of-range-compare]
>         if (unlikely(remain > N_RELOC(ULONG_MAX)))
>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> 
> Since remain is an unsigned int, it can never be larger than UINT_MAX,
> which is less than ULONG_MAX / sizeof(struct drm_i915_gem_relocation_entry).
> Remove this statement to fix the warning.

The check should remain as we do want to document the overflow
calculation, and it should represent the types used -- it's much easier
to review a stub than trying to find a missing overflow check. If the
overflow cannot happen as the types are wide enough, no problem, the
compiler can remove the known false branch.

Tautology here has a purpose for conveying information to the reader.
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157453950786.2524.16955749910067219709%40skylake-alporthouse-com.

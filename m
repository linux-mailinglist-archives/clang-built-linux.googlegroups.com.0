Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWO6SX3AKGQED3WDTCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D62961DBC15
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:56:42 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id k17sf1455482uab.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589997401; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHCJK7YnSW3d4QvsyQ6XRrhAScWZXq5BlLrL/gh+SGHxFumBObwoVWpkP5v026xXEr
         Hu8I7OQspWwjUwCzg2kNrnfnqZdUYIruH8iT7ZEEPdssT5AEASN73qc7xcWpVimN4xqB
         NCalrWmF24LhE2kPR9Bn0psbnAsUk43OkcYcBYwOShaYVqtZQNWbHY2QWtBlliokJbkO
         G/2pQGwXtuOh5JEiiBJ8xhVz7u9vLpafPsFjBuzy2UjRWHZgGZG/2BEmePT32bWPXSKP
         hyhMw91RlKOJPZHPBd+4oOa/HSwy57sgvU48blLpJn0GkTPgVC5yEeN3PNcg5CBimggs
         sqxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jeBkbCbrOMd8a2ba3tYaZjAbBZMD8tRzJwwWX1nrrZs=;
        b=MRis/NhGFRtAXkOcbCcthdumbZ9O4vmN/IgutqO9MSQvEta38xJ/FjDVK2Y0W02N1Q
         ibFZE5AWlt9c2uollgdxUsxi4kN7Eb2Pcxd4dCIKav638yYf+cYQvJpOwuQP6RI7657Z
         oVaG58v108RbToW7ehZDWoOjje7VAoYxeat9QXM2NTkQ6b/3bJcbfeWfidFsytRDoiBl
         fX9F0IynEgdM96Mve+NBiMsY1Fw4+1twQW/Ak1lXz8nGPfYCHoMloTT0KJnGiR5xhLbG
         y2qxJFapcuYwOcAYc+2pI3MVgLznKHFPMT/1EQYlqxG4NISxgPivTbBh6LqA9JLMlBpu
         sb3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sEj297nZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jeBkbCbrOMd8a2ba3tYaZjAbBZMD8tRzJwwWX1nrrZs=;
        b=EjWld7tyWYfVd6KiD9ny+zguOi8M2qgIKhU9u9P/M1JnMxkRCs9HC4nUnBGS0V4mfZ
         h0Awboc3SOITKcmLoDii2byFzrE/2iKzgXQfbr4a7oN0DdOjb/+0uCQE4pJioEkePK5l
         cHnuG7/jrg1zCcQy+JXGnJRHMYwdnrMyUbyGQCADYYE2d5a+Im9OVJwKQcdoJDl7GH+e
         uT4i6TJzJZMy5tXZPjNrnWVSCm/LegmL4Rd/mlQF0TcZisBE1WM+BKAO2qA0v3FkZO1z
         BSZq8YByJ61JeLsZcQDVZwtl0owktudFcnA9cJaT0LOhe9+lT9jKNtdQGAbpyrcTl8Th
         Y/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jeBkbCbrOMd8a2ba3tYaZjAbBZMD8tRzJwwWX1nrrZs=;
        b=I74fLw2haI6fL/+PmOhoQmsn9q4qlAieZE3vF1N7/S+i+1fJtSiT356N5I+UTtbG7u
         JuepOSo4eb2ltpLmbNlBV/THIH4Oqsn0EqWO1SStKQ/U01yXI0bSXRnBZOO01DiezcdQ
         6T5pTw71kVKUt/gwdBB2W7rE4z4lD2PmhAWXpQRCRe4U38CXz+jdwyDsULLCk2P4Scac
         K7WvjCq5PBMV2QX44Pn8k8+BykY0JpJ/++m/SmO5v3IjDPlN/wOoAay2STRocjXDs4/B
         KWtb4PlG6MOs3r6wVyvmoM8xmZS92o+odEP399nbzQPbE6VpTa70NQNKDzKolxAGnh1p
         9p/A==
X-Gm-Message-State: AOAM5308uhpDNMvoJFUQ/BduPjVF/MKhSACs/sVCjxyZwFsJVdpif/te
	QqUU/ptQEsAHdPbSeI4Ez7k=
X-Google-Smtp-Source: ABdhPJwzFueBOSJYbVf9YCL5tPm6xK9NsQlLYKosdzPvCSRS9I+HvzIY0ZclQmIfmYs+7k2miVQ8iA==
X-Received: by 2002:a67:8c45:: with SMTP id o66mr4107918vsd.124.1589997401467;
        Wed, 20 May 2020 10:56:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2345:: with SMTP id j66ls215431vkj.5.gmail; Wed, 20 May
 2020 10:56:41 -0700 (PDT)
X-Received: by 2002:a1f:1bc3:: with SMTP id b186mr4793970vkb.95.1589997401178;
        Wed, 20 May 2020 10:56:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589997401; cv=none;
        d=google.com; s=arc-20160816;
        b=bzYBERlIqeNSFsFWoPXUHlq1lR4obQa1gvqaS9zFyQT0bclvHbJcihxRSZfS4a/Mxe
         WJOwKYexbi0mXJTTwDrAuZ6jCJECmj3VOfmCvF/FepYaMW35015/qBi+cacHEjsFtD8l
         QxuiH2pnpdlcRtvfcW7yOkzvrct1RvU1fS9SlBPPnfg/AKKy5kglKIfWeJjnoJlwXDEH
         LIfKpb+bTvIWMLRo8LnWhNxGrDzfaj8TB4XehLfsmI+GqcAkHpVQukUd82ntR58SlUws
         d1pT1dv3M7/pbeBmnIzv1NLLKd9kTtYG6LNjcD7kGVBeBlYH/+Bu2oApJLtSGJvEo45f
         R09g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pty6C2nrLJxasEr51wGRq0lQ2nqP2bOfYIiMHMUP8D4=;
        b=Z4HzuF4ZXcMbzjrq1rDUyUybEYJ1mGG1qn+LNqYMYcRom9VW2IEwzIHnR8Tsq5ubS2
         615uLjG3IXpXAu5D+pSfRkr1t4/f8jVwm0x/HT6W4ZJb0T8SlVLalr20pwGrxiF9X0wi
         slAh7c2GhdEwyusKwCqbRQpuQDQ8i8Iv2IORHctGxJZvbwLZZ3MObmHYwQbHxhOi2mFC
         VCXuirbrJ4U+GHz01ACmm+eXflXWvdnAqcma7/nnZsV1H78Btc/2OJ3PsfHcXrZ/zN2H
         2jqCRWoJdQGG+OVigTa7nQZu7jxY10OZNuTqye2SPbvMI9iWmYgHNiz0bsnBtq1QO4RP
         TDmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sEj297nZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 137si243920vkw.5.2020.05.20.10.56.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 10:56:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u5so1795107pgn.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 10:56:41 -0700 (PDT)
X-Received: by 2002:a63:d010:: with SMTP id z16mr4949420pgf.381.1589997399878;
 Wed, 20 May 2020 10:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <202005201012.pqmB8hA5%lkp@intel.com> <20200520155352.GB3184088@rani.riverdale.lan>
 <CAMj1kXGNmDPQRCCtRYFRa+0NW9kADnx327FzPbNge+MU+NFoVg@mail.gmail.com>
 <20200520173425.ovn4kvv2cvkdlrnn@google.com> <20200520173926.GA3365034@rani.riverdale.lan>
 <20200520174100.GB3365034@rani.riverdale.lan>
In-Reply-To: <20200520174100.GB3365034@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 10:56:28 -0700
Message-ID: <CAKwvOdns1LkmPNAGcOZRdXxD_2fTgbYzr0DndvsTVL-Zuuowgg@mail.gmail.com>
Subject: Re: [efi:next 22/40] ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0):
 has non-ABS relocation R_X86_64_PC32 against symbol ''
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-efi <linux-efi@vger.kernel.org>, 
	Philip Li <philip.li@intel.com>, Chen Rong <rong.a.chen@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sEj297nZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, May 20, 2020 at 10:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> As an aside, how does one (should I) get onto kbuild-all? It keeps
> bouncing me as a non-list member currently.

Philip Li <philip.li@intel.com>
Chen Rong <rong.a.chen@intel.com>
are the two folks I always reference for 0day bot related questions. I
haven't seen bounces, but I also don't recall subscribing to any
related mailing lists.  Maybe I was added to one?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdns1LkmPNAGcOZRdXxD_2fTgbYzr0DndvsTVL-Zuuowgg%40mail.gmail.com.

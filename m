Return-Path: <clang-built-linux+bncBD66FMGZA4IOPNHF54CRUBEZUL5CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAE5123A2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 23:44:57 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id q185sf1645348ywe.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 14:44:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576622696; cv=pass;
        d=google.com; s=arc-20160816;
        b=xO5OMuLqIzHRSBUTlDiS/DA/ideuARYyXTqkS008JTmdPvBofj5QWwBoDrs8LlDMgW
         IsYp2k5lz+os9y8OUGNoi5J1gLTP7ffgUXtOIy9Pfx4KE7oQQRvFjHKK+jkFsYSVCPOp
         2Ryck1cVaWQonsEn7iiNEs05aSfB1HyMFnxe5KXUrg6+FPgsJCYrOeamIfIEciUSrV1e
         gPuJK3btpN42Bu3vzWF0HZCuv7ABSY8S776Fm/Zv8GkDHgZcEl95ifuk5IKrkm5fh7ze
         gyKcnCE8U1e2gie9uAytBqg0yWjDIfQq1bE6WNh4Z9e7FPHhg9bnUwZv5sIanU4HHOqz
         9SMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=GB3+LYdTWF+Os5mgG+zo0womSIV+GxItQiqNzqct0FE=;
        b=vfrej4Lw6m9OeOESmCZUgYeFG3mDorIewVsNuCLBSlwEVbkok3wABb2K0TpkayFGq0
         Ii2sRLefoKr8PDjfwN7FZKpJ+MJGgcm2lSWCc1+OFdc5W2lGQw3AEpXFaD2Kz5FZ5b25
         FCSdv2ezNPgsZ4ZBrHoycbv5xSYgQ6paIa1zkanaFpAu/zwVhI1RJg8jwLB3l9PpWE9Y
         0Ntf1yi/fhk50o7L8i3uCYyrWb6P7NjsTBecbZHzIDm+nRMdn3CtP9Tpv25qxkvowP8n
         idb2AnU2SjuOyLjyyw83ZfmNlgx7ooMK+RZRd87EztVTDXZboui9UAK5t5GoiNMhdeLP
         Z35w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cLx6RZTA;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e32 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GB3+LYdTWF+Os5mgG+zo0womSIV+GxItQiqNzqct0FE=;
        b=dD5hUw082GGhXgCp3qE2muTxr3vuiAlSCR/KnzkZuxZmojY0hA4jdM9QcoygvT6W0p
         uzlorza2+sVq8MAwMB2VzGXhL9/g231yqAoE9e2e7wXk9QFaNjDAyAIgxQj923ynqsA8
         CVXaMmSv7gYzzA0FEdQOLcA2ChoaXvSZTfD2mRX57oRuwoBWeDHIPgGmo6gG+lxzr78/
         RefWLjfKAGrRSgtnKPYHgL6nsqhylWGAOyp9AwLZ7EVfyIukHSGbfrSziJSDI9R4rIvI
         VH0IwPYIKkSk1L+TNY6U1mE8QxNNOKEHUInTHsEy7ye+IqqaTOJgrC1HuoglcBuCVzhc
         qdTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GB3+LYdTWF+Os5mgG+zo0womSIV+GxItQiqNzqct0FE=;
        b=Q8LpZm4GywkRYW6WMsV32u5b3XrI2QpzRrX2OdT3kwWIsbEK5z3xb3HIun61AhmZ6u
         QeQh2BPVYmpMCYl2F8WsBkzbHw+1TLL6fzZEpPJbP+9a+l3Zml3QzVxwyjcVZo4PkAow
         2oaB6AyolWX1wtQ7Uz56avGsic0Frnh9Ixe5PsQ3n2J0p6x6HBFwdRXZVx+M0GmKUcX1
         0iO+uqTWKycvV+k30VQiUzCbdlsuGiALR3U8Z7gm6XuZ7IL6ctQNQsecPNyWer+veCBF
         8K60sbMDtQ9NJQFrZwJe3TCmaQqSc2x+7f4zcmkjElc4TqiNYuo6Xj87vizRa7lXpOg6
         qolA==
X-Gm-Message-State: APjAAAUo3l/4LW9djON7IJwvAG+V1+IFXh7lp6S9tYwn3JRHlfUFOD+H
	UCfLwOjSvGDFxeIk83RaB90=
X-Google-Smtp-Source: APXvYqy3/7DJeOtsXgmBvyi3Yrx7gHLWymMWkc0xXFME7NdEi2/NlMuKTzD91jCBSWHlY94b1dg6Dg==
X-Received: by 2002:a25:d6cc:: with SMTP id n195mr426026ybg.158.1576622695684;
        Tue, 17 Dec 2019 14:44:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c945:: with SMTP id z66ls36533ybf.16.gmail; Tue, 17 Dec
 2019 14:44:55 -0800 (PST)
X-Received: by 2002:a25:b30d:: with SMTP id l13mr379063ybj.445.1576622695328;
        Tue, 17 Dec 2019 14:44:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576622695; cv=none;
        d=google.com; s=arc-20160816;
        b=NZFQsjdc2fKlbpeym2PjOqSSbvzKS4TC8Veg89T0GebamQGmIsy8pEzV6VBfb7ewFc
         YcCqApfxuRYBQj/4HOoUALo10BpS+svJGZ0lD3ZNcwsI/Z04vLeV7t6jaQJQVTcXSnXj
         B+iVQ84c+hgzbDu4O4FbFbSR/LbB2nW5zLisRBPWBB3uH2sOiP4wOec8dtFw5XNlJT7p
         Xx+fFcqU8M7ah7mkGgbsawV+8vg1109vraMh9YCrr4d0soKen23wA6JQX/A2jGB4NMxJ
         YqOcHMNHF8XItdm7XxSM+D7ZONUGtVo0MRhFBjT+M/oRQW3b7qv56SfWUN/GODLbqhd1
         AOUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=7HH5cSx+trMGZFUUcUBSYIjUn68ilrSkGXVH3sftycI=;
        b=uJC0PRyeLRYzPGqoTaD1UoLuEigTqwuKVkoa5JLE4UHIhTDnXkQA8wlKUxwIXVGiUj
         /4CRlZSnE9W9g+YRieuOnPz8x8k3npOQCXC1Mh/Q/YNtkAGW++csZU0DA4b9oWFjOFBy
         UlvZBp2+8qFY4ZArQv/EhCjKxdEOV7rpSfg3HalgtIZwbU7MUJxV++bg174yOJTMHntL
         oYTGX5SuM+20aUMiIVfDqX3ETbR7+IrbIDVru2FzfM90gOAizlJecu0g0AeLKGhgjceg
         q3Y3O3EOsQlJN8GyTwhrm+YgozT+NQ9Mkikj1VkYj9Tqx68d5zfKUJBeyzjy/iVSlTzA
         KnsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cLx6RZTA;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e32 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com. [2607:f8b0:4864:20::e32])
        by gmr-mx.google.com with ESMTPS id s64si11068ywf.0.2019.12.17.14.44.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 14:44:55 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e32 as permitted sender) client-ip=2607:f8b0:4864:20::e32;
Received: by mail-vs1-xe32.google.com with SMTP id x4so122357vsx.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 14:44:55 -0800 (PST)
X-Received: by 2002:a67:f155:: with SMTP id t21mr4654703vsm.80.1576622694740;
 Tue, 17 Dec 2019 14:44:54 -0800 (PST)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Dec 2019 14:44:43 -0800
Message-ID: <CAGG=3QW_4vJ_i6dqG3BMkJkOOvmZ9_LDEU6HZiFuf=D5SNnk6A@mail.gmail.com>
Subject: [Meetup] T-Shirt Sizes
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000aa95380599ee138b"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cLx6RZTA;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e32 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--000000000000aa95380599ee138b
Content-Type: text/plain; charset="UTF-8"

Howdy, gang!

I'm organizing some swag for the meetup. I'm thinking either t-shirts or
hats. Could you please send me your t-shirt size?

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW_4vJ_i6dqG3BMkJkOOvmZ9_LDEU6HZiFuf%3DD5SNnk6A%40mail.gmail.com.

--000000000000aa95380599ee138b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Howdy, gang!<div><br></div><div>I&#39;m organizing some sw=
ag for the meetup. I&#39;m thinking either t-shirts or hats. Could you plea=
se send me your t-shirt size?<br><div><div><br></div><div>-bw</div></div></=
div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QW_4vJ_i6dqG3BMkJkOOvmZ9_LDEU6HZiFuf%3=
DD5SNnk6A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW_4vJ_i6dqG3BMkJkOOvmZ=
9_LDEU6HZiFuf%3DD5SNnk6A%40mail.gmail.com</a>.<br />

--000000000000aa95380599ee138b--

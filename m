Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2G36DXAKGQE3BJ2H3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 388A710944E
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 20:39:22 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id m13sf9336966pgk.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 11:39:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574710761; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWfWnsv7TH6ErqxTsdG7Fk7B1KivgGH6u8cZzRUJqZjjlzzOJ/04wnBIaZBLTZBOZ7
         5TncSQLAvk6DhQEEI005PZr20+B4qcPj2RB9mR9s7jLTArcoe+tOIMizfaz8OANx6j4u
         l25J8ia87Bixm0waJAdv0zbKaDWOYe/5O+eMTGl1YauGk/X5AuCZCaFrLJUNp8FyHoGW
         pW2WlPpH9yA3/1i1hLrbCspm9e1Nk9RLqEsS3X81TImUWAI+Vv704vMQEQ4sbw2TUpkN
         wDNonZpYrhnYGyRYFwFm/rGGWe3GlaSByqcQQtFpeHV9SKg45NNKJ3/sicDc4K6phke6
         AnZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pRQtabgIVWkAeClEU2N5nb8xGXcokYKvTmAeIaclwJk=;
        b=DxPfw8fv2PISVtXJAXqWJszIl5OCFCnHqtns4/dJbuMlFjYDB4r39BSpBiYdDqIy5q
         qWk4prEo5IZN7A0kEgfxP7UtC+L8wdXejJug9wTT6BRGniy1lvKWq8RNHmhCxUUJR7A2
         u8oY77x1+GFcUPIH56nxFDSjeiI+g9nkDZ/wgHIB9e9NHMbY3bMByp5PMcVJtYbSQfuQ
         7o9cxJydxP+vVLWWDpzPHJE7xJxT+ma/6EtmuNEO/fI4GgndQQDSN4pGQJYtOQQLu6yp
         Vqrs9GXxBuEAdkJeA0cC9ACPUWpg0BVCOt1b69l2J2wpyoLyis7Z2hzA1/yX621jiopF
         Qc8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="G/S6X4qW";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRQtabgIVWkAeClEU2N5nb8xGXcokYKvTmAeIaclwJk=;
        b=LWPy55lz3k45zpteMi9nXlvM/qGGs1nZN9KGKKL5VKza48KEYWNPviLtiGm5rm6G95
         2xt1J1anjV7atgix6hCJyjHIQE2mYrj0gYKQsfnJGHAlf5LDIqQgc1XKds3poKHtqT/p
         y9xNLcqN3H/Kp/n7UXmStEmie8zJA7iZ2j5Ngci0ErJq2IJn15udwrISsPYd6Jz4loVS
         RnkFZZR8X/zVS0g6zra+oPPj5e++wgDbs44MxfYs9WmWD+OXqDSJVtbd+brdq9NwM/ZD
         GWYIiyh4/klRNZCWLfkvoQsy7W+jJG9uDvLsDyYSZyMXjDGxCxDTj+Vq/T3hePWqz2PD
         VBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRQtabgIVWkAeClEU2N5nb8xGXcokYKvTmAeIaclwJk=;
        b=oigFTPSNBVrw0IbLd8mcQavZetmLo+yRYTrENHX2xkfyOWipZlVIMfMuZKEUo5jQzN
         NpzPPjzqBqurnONlWwzxjPGN53aH4E6HM7e2qxysv73RNZG4vm4YS26o8D1dFISx+PIx
         R9DgKKF+XGf7NsxeHtKCmDGymfSzQeQ/HK6e0Hw0S+KDmKWbbTyofe3TV5W0nrFAe0IH
         FHE1YORskJZgHF/JHcnneW0Wf4zR+GX3JFbERjF9rtjhFVFttvyR9TgDRHmitaBVAjcY
         WzbuendHUnUAYebp61kJPHdBbpPiSjPg/J4irC7DgJ8N0sC0WhMXFWsU8e5RoUyhfzD9
         J6mA==
X-Gm-Message-State: APjAAAXt+fmkKKcrqlPgJGvErx4atgyheHXqaE7Ldf2k6S+1L4y80iKz
	HPoYG44Q/3InFQfQRjpL9e4=
X-Google-Smtp-Source: APXvYqziX/bmp/Te3KVhTUdbBKZryQQsu25ixaXSmGibmozZKuvF9dhYu32ddjiHjjcNj2lbUmwMxw==
X-Received: by 2002:a65:64c1:: with SMTP id t1mr27874171pgv.263.1574710760807;
        Mon, 25 Nov 2019 11:39:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9f8e:: with SMTP id o14ls74353pjp.3.gmail; Mon, 25
 Nov 2019 11:39:20 -0800 (PST)
X-Received: by 2002:a17:902:ac84:: with SMTP id h4mr30829906plr.328.1574710760355;
        Mon, 25 Nov 2019 11:39:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574710760; cv=none;
        d=google.com; s=arc-20160816;
        b=LCWWajHduZdx0x4tYj6Rlzbl/lS7QkzoGY6TTqHkukwk89aZYCpOitxSJGUIMNNpLA
         J74Zv+VoFXXvg9JJjaf2/PK686yT8cuqWjthyO9lQRQ8pAw4tQ1DZd+5zx3mTmjmdlXr
         0SQtPZQ71+1zr7SJqaPLYTZDHuwUtxLo/oFhlzDeSJLTKgBbIfTVKrC8yGTN7CcsKY4b
         fQ+uDCiCPqG43AwLpH6SRPvCfSDgXdAI5/b8NZkRGsgbVIOqKCSiHah5cN6K8MYKpRtu
         uVPK6xGp2FVBgBJk8sfxpL0srYVkX4BgNCIQI7I7r28KKo4w6tisQnurGg67RsZmM04L
         QK9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7MBxWDkXpERqkSDmMhodvqUg0A3hHgxZWxKtcdO3owk=;
        b=0WzxQ8p/gHGRG5JhIWrD1RX5ujh/KRZZui+Vh6NxT3KSRCIQJTvWHAOjcWuR+Nq7ZU
         S/1iDQzGc9BMKnWPGbf2IAQiIHHtREBQisK2eOhhuiO3hM44gChH8rHXhUo0jhs6sXoQ
         UsAxC7g6wAKqn8hJOXsZ8U3ZQ/NHnZAHbxdmUXBsS9BLt5b8VbYAdVwJqruQnJJ/Xy8d
         NaiWuCRYPiPPT9S/nMwWfLe144o7JoX9F9+AuHJno99jElCnAW8ggUspX0gVGO4ZlRT+
         tHeH3JUGO+ra/iC78L2xnwvytCGzYfuZY+u0dRt2hPoywZp9Ci7glHZLuuWBVnM/qUcN
         DPTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="G/S6X4qW";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id h18si5315pju.1.2019.11.25.11.39.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 11:39:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id a16so7043329pjs.13
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 11:39:20 -0800 (PST)
X-Received: by 2002:a17:902:8498:: with SMTP id c24mr29731936plo.223.1574710759582;
 Mon, 25 Nov 2019 11:39:19 -0800 (PST)
MIME-Version: 1.0
References: <201911220351.HPI9gxNo%lkp@intel.com> <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
 <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com>
In-Reply-To: <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Nov 2019 11:39:08 -0800
Message-ID: <CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q@mail.gmail.com>
Subject: Re: [PATCH 05/22] btrfs: add the beginning of async discard, discard workqueue
To: Dennis Zhou <dennis@kernel.org>, Chen Rong <rong.a.chen@intel.com>, 
	Philip Li <philip.li@intel.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>, 
	Josef Bacik <josef@toxicpanda.com>, Omar Sandoval <osandov@osandov.com>, kernel-team@fb.com, 
	linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="G/S6X4qW";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Mon, Nov 25, 2019 at 10:59 AM Dennis Zhou <dennis@kernel.org> wrote:
>
> On Thu, Nov 21, 2019 at 08:27:43PM -0800, Nick Desaulniers wrote:
> > Hi Dennis,
> > Below is a 0day bot report from a build w/ Clang. Warning looks legit,
> > can you please take a look?
> >
>
> Ah thanks for this! Yeah that was a miss when I switched from flags ->
> an enum and didn't update the declaration properly. I'll be sending out
> a v4 as another fix for arm has some rebase conflicts.
>
> Is there a way to enable so I get these emails directly?

+ Rong, Philip

The reports have only been sent to our mailing list where we've been
manually triaging them.  The issue with enabling them globally was
that the script to reproduce the warning still doesn't mention how to
build w/ Clang.

In general the reports have been high value (I ignore most reports
with -Wimplicit-function-declaration, which is the most frequent as it
shows the patch was not compile tested at all).

Rong, Philip, it's been a while since we talked about this last. Is
there a general timeline of when these reports will be turned on
globally?  Even if the directions to reproduce aren't quite right,
generally there's enough info in the existing bugs where authors can
rewrite their patch without even needing to rebuild with Clang (though
having correct directions to reproduce would be nice, we could wait
until someone asked for them explicitly).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q%40mail.gmail.com.

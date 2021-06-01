Return-Path: <clang-built-linux+bncBD66FMGZA4IPRYOXQUDBUBB5VTWBC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 553E4396F00
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 10:34:01 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id x9-20020adfffc90000b02901178add5f60sf531827wrs.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 01:34:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622536441; cv=pass;
        d=google.com; s=arc-20160816;
        b=ag4mpQXAwM26kRZwazWj/xprEOXuYXEjSj31QRaKT8E1TWiKohSOrnhRUvQH7ukQyT
         htR3roWrGdPK50K9iRBloHokVbe/jQ2NZzLJRj3tjFFc+2KDWQCa2fZIGt3/0JfN9i4f
         gD5ndzb4Ja1IJ2s9SlnjgcyB3jW8ys0DDfMgR1wAVmXPnT0kdSJQ3nNVInffjNUkDjx0
         wC9Y1z4Inq9AMgpjsSq4Lym149vU6m+wMJteGOAM1k8qn2ZgKsM9P1GmqUM7jz3neQRV
         Se58oj+KaDy2MHy7pBlJJEMw+579bBavz7gWk2KJdNOoSzkZ1dOS3CzEii8X9OouHk30
         WeTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8WeM4VFLZRxKlkQUX/UHBFVyBKHe5MwuOPD4HxdrTY0=;
        b=XdA4R7bA6jyhydC3z5jA05wyowcXVg/hs/XcTqGevHbnICv0oCgY3ahmjqev1GT2J4
         n7+H0BbD86YEGTJ1jXCEDwmvRp7rrLi98yElMR9/8r17RVGs8pH80tfX7fGClLfQa/+x
         3/iBXWhb4mXZK/Jvp2os5teVIjiM9mnhnfJJa9sPzWt7SWAQOWDGujNojX0cjRK7sf4t
         QHCjfhuuRoH16IPjrQJbBopIeqJPDaENtzp2UPR6VLgpI5QTx9IS41veY6OjIY/K6Cyd
         Ja+SgCujKyGM+AlTdX2AD8+lLIUJMgnpgWjYqHFWJVZUq8Kmw7Ux2ENbydaE2KNQNtD4
         YzYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A7UfRu3q;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8WeM4VFLZRxKlkQUX/UHBFVyBKHe5MwuOPD4HxdrTY0=;
        b=X1Un1Hbs58jvXpoLV76pOosTKPBjDYAkfyOeTOnL28viAjpUaGj320ouEIk3m/8ije
         6wKYavkv04QiLx9Vv/6U10inUFrlN1YJCOqqGc8/B+bjjc7Vt0zVV454KaMyc6NFQEfP
         9bMu7++GiZIqpMfvznDY5ieQpaVuKnxpB7iWLiGO/wppDIcHptcL0kkWBS4RURyxgYFn
         kOKUGGa06GvTkgweJ9xKiHGmMI34j7zYXw/VLF90Tjwasox6vPtF6blGdZdAgntWvjCs
         S7nKIbKjU3KgdSkIbVDyCJ+pQVefIdgjrwMfGHBSAsHPScI+Mgde215APVCbzB7anm+7
         rq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8WeM4VFLZRxKlkQUX/UHBFVyBKHe5MwuOPD4HxdrTY0=;
        b=oDtwKed4OVW9/D9UCHIcHDE5JrHciuZudZceA+E5Vyt4JGZhp8Je3JNRghA1kFcGwl
         fFqE2h0Fla6r60ietY0pHOQDOHPT4viCmDqP34f6Ki/gY+OZucA8ysB5MC39rkiy6On2
         vLtlEeV+f/Ynoe6aQ5zeLlcu6CurhonVP1k5XZniVcNCk5WPOnZJjvAwIzN7AT5bFtzl
         nRhNlQwDnO21xYbQRr0/KwA4BJCnP7gxMtH0u5uM9Pc3W9JsXUlFPN5dtOW9n0W7kihN
         PTYmBAnNwmf3QbGmAJjRmJD9tLDSOgLjwU49gN/tgRhRqRixU/2yMpX026GTlDmSlY9S
         A5Bg==
X-Gm-Message-State: AOAM532EFzTJUsx9PEQts9MLyJtCfCeYZrutL7lRSgyKToGAYkXyaXE7
	4XEb1SyiUNCGKSuKWckvAwU=
X-Google-Smtp-Source: ABdhPJzu2xy304LZKfHfabzk4ZQEWHjzvDFn+LJVw04fISUJxikyYEpa0d41zZ/oKnCsn7lhieASgA==
X-Received: by 2002:adf:8bd4:: with SMTP id w20mr13665273wra.310.1622536441093;
        Tue, 01 Jun 2021 01:34:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:2a8:: with SMTP id l8ls699704wry.1.gmail; Tue, 01
 Jun 2021 01:34:00 -0700 (PDT)
X-Received: by 2002:adf:f642:: with SMTP id x2mr25975728wrp.323.1622536440363;
        Tue, 01 Jun 2021 01:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622536440; cv=none;
        d=google.com; s=arc-20160816;
        b=vop2aefp6ghcpKa3kZKV37Rml4V/ID19iNwj0vlgJyvehCf7SLpbXS0OHWgvRfcDb0
         Aq8I0ppAqR7NKg+z9oLQyNamtHe9pykZbwUA0HYglDiMlX7iQMt9hknAjSFAf/mCwxsZ
         3dNRzlCNj0PZ2nMcikdM86//3qg8G3tGgcPoBNxVZ+GqkXObf2W6Xe1qSqpz6sLmF8n8
         T6l98oMP/+l/ayOagidYPb+bfUubgJBI63/ZP2NFGk7AnRGub/4bYOLkSghx8xT9kcB/
         wxxBgIY8fEGns18AUw2m1K7tfD2HSkqNMRaLc0JC2sq1bbfQ7SWyJw9NYuWR8Q4oL8DJ
         KiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Xc4n9XmoNCDNr0ZZajgmxSpPRpnP9fadGEn7vmxH+5o=;
        b=XgJpTZfNS1xUfkEnVj4SxmRtwMXUhpJ2yP2Vba82EX8oaG7Egw8TUrsr2OUU2Oy78W
         4tB9SaQxr5WsDQl9iGdqGQrX1RE36mcB+sS7v+Wg6TsvAKSntv3gbyePvvYvuo+ISwb4
         MK2ZVbuQUE1Hc1OeVVB9PQE/NADJXgCeHHfp8TlBSSlStAZyCzUDiutxof7rqhw4TLOK
         eZdNvcqxBMbYW0kXlsw6+AVJvjUpr5biW4Xl595hc9RztP2qRfJlOIDE/N2E99iyyDH7
         i2Do/VXClQCikCNboiuOTw1xlFnzuGMed++HjiSxuHNaCDRI2iEv0aRqvfDJnLiVnbPp
         virA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A7UfRu3q;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id t1si143596wrn.4.2021.06.01.01.34.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 01:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id g8so11975860ejx.1
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 01:34:00 -0700 (PDT)
X-Received: by 2002:a17:906:f9db:: with SMTP id lj27mr16059235ejb.421.1622536439789;
 Tue, 01 Jun 2021 01:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210528200821.459214-1-jarmo.tiitto@gmail.com> <YLU0VAoWG7qa7u24@Ryzen-9-3900X.localdomain>
In-Reply-To: <YLU0VAoWG7qa7u24@Ryzen-9-3900X.localdomain>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 01:33:48 -0700
Message-ID: <CAGG=3QXtisfabaiVP6y_3sjGsM7cQmPhur8Zqor4qkGrbiXpBA@mail.gmail.com>
Subject: Re: [PATCH 3/6] pgo: modules Add module profile data export machinery.
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, wcw@google.com, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A7UfRu3q;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62e as
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

On Mon, May 31, 2021 at 12:09 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, May 28, 2021 at 11:08:21PM +0300, Jarmo Tiitto wrote:
> > PGO profile data is exported from the kernel by
> > creating debugfs files: pgo/<module>.profraw for each module.
>
> Again, I do not really have many comments on the actual code as I am not
> super familiar with it.
>
> However, fs_mod.c duplicates a lot of the functions in fs.c, which makes
> maintaining this code even more difficult, especially against LLVM PGO
> profile data format changes. I just want to make sure I understand this:
> does PGO currently not work with modules? Or does this patch series just
> make it so that each module has its own .profraw file so individual
> modules can be optimized?
>
> If it is the latter, what is the point? Why would you want to optimize
> just a module and not the entire kernel, if you already have to go
> through the profiling steps?
>
> If it is the former, there has to be a better way to share more of the
> machinery between fs.c and fs_mod.c than basically duplicating
> everything because there are some parameters and logic that have to
> change. I do not have a ton of time to outline exactly what that might
> look like but for example, prf_fill_header and prf_module_fill_header
> are basically the same thing aside from the mod parameter and the
> prf_..._count() calls. It seems like if mod was NULL, you would call the
> vmlinux versions of the functions.
>
Functions definitely shouldn't be duplicated with only minor changes.
We should determine a way to combine them.

As for whether the original PGO patch supports profiling in modules,
the answer is "it depends". :-) I believe that clang inserts profiling
hooks into all code that's compiled with the "-fprofile..." flags.
This would include the modules of course. In GCOV, it's possible to
retrieve profiling information for a single file. Jarmo, is that the
intention of your patches?

-bw

> > Modules are register into the profiler via module notifier callback
> > similiar to gcov/base.c. Note that if module does not have __llvm_prf_xxx
> > sections required the module ignored.
> >
> > Also there is no "reset" support for yet for these files.
> >
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > ---
> >  kernel/pgo/Makefile     |   2 +-
> >  kernel/pgo/fs.c         |  54 ++++--
> >  kernel/pgo/fs_mod.c     | 415 ++++++++++++++++++++++++++++++++++++++++
> >  kernel/pgo/instrument.c |  12 +-
> >  kernel/pgo/pgo.h        |  11 +-
> >  5 files changed, 466 insertions(+), 28 deletions(-)
> >  create mode 100644 kernel/pgo/fs_mod.c
> >
> > diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile
> > index 41e27cefd9a4..662b7dfdfbe9 100644
> > --- a/kernel/pgo/Makefile
> > +++ b/kernel/pgo/Makefile
> > @@ -2,4 +2,4 @@
> >  GCOV_PROFILE := n
> >  PGO_PROFILE  := n
> >
> > -obj-y        += fs.o instrument.o
> > +obj-y        += fs.o fs_mod.o instrument.o
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > index 575142735273..5471d270a5bb 100644
> > --- a/kernel/pgo/fs.c
> > +++ b/kernel/pgo/fs.c
> > @@ -227,15 +227,15 @@ static unsigned long prf_buffer_size(void)
> >   * Serialize the profiling data into a format LLVM's tools can understand.
> >   * Note: caller *must* hold pgo_lock.
> >   */
> > -static int prf_serialize(struct prf_private_data *p)
> > +static int prf_serialize(struct prf_private_data *p, unsigned long *buf_size)
> >  {
> >       int err = 0;
> >       void *buffer;
> >
> > -     p->size = prf_buffer_size();
> > -     p->buffer = vzalloc(p->size);
> > +     /* re-check buffer size */
> > +     *buf_size = prf_buffer_size();
> >
> > -     if (!p->buffer) {
> > +     if (p->size < *buf_size || !p->buffer) {
> >               err = -ENOMEM;
> >               goto out;
> >       }
> > @@ -262,7 +262,8 @@ static int prf_open(struct inode *inode, struct file *file)
> >  {
> >       struct prf_private_data *data;
> >       unsigned long flags;
> > -     int err;
> > +     unsigned long buf_size;
> > +     int err = 0;
> >
> >       data = kzalloc(sizeof(*data), GFP_KERNEL);
> >       if (!data) {
> > @@ -270,18 +271,41 @@ static int prf_open(struct inode *inode, struct file *file)
> >               goto out;
> >       }
> >
> > +     /* estimate amount of memory needed:
> > +      * can't vzalloc() while prf_lock() is held:
> > +      * CONFIG_DEBUG_ATOMIC_SLEEP complains.
> > +      * So first get buffer size, release the lock,
> > +      * vzalloc(), re-lock and try serialize.
> > +      */
> >       flags = prf_lock();
> > +     buf_size = prf_buffer_size();
> >
> > -     err = prf_serialize(data);
> > -     if (unlikely(err)) {
> > -             kfree(data);
> > -             goto out_unlock;
> > -     }
> > +     do {
> > +             prf_unlock(flags);
> >
> > -     file->private_data = data;
> > +             /* resize buffer */
> > +             if (data->size < buf_size && data->buffer) {
> > +                     vfree(data->buffer);
> > +                     data->buffer = NULL;
> > +             }
> > +
> > +             if (!data->buffer) {
> > +                     data->size = buf_size;
> > +                     data->buffer = vzalloc(data->size);
> >
> > -out_unlock:
> > +                     if (!data->buffer) {
> > +                             err = -ENOMEM;
> > +                             goto out;
> > +                     }
> > +             }
> > +             /* try serialize */
> > +             flags = prf_lock();
> > +     } while (prf_serialize(data, &buf_size));
> >       prf_unlock(flags);
> > +
> > +     data->size = buf_size;
> > +     file->private_data = data;
> > +
> >  out:
> >       return err;
> >  }
> > @@ -363,6 +387,8 @@ static const struct file_operations prf_reset_fops = {
> >  /* Create debugfs entries. */
> >  static int __init pgo_init(void)
> >  {
> > +     pr_notice("Clang PGO profile data available.");
> > +
> >       directory = debugfs_create_dir("pgo", NULL);
> >       if (!directory)
> >               goto err_remove;
> > @@ -375,6 +401,8 @@ static int __init pgo_init(void)
> >                                &prf_reset_fops))
> >               goto err_remove;
> >
> > +     prf_modules_init();
> > +
> >       return 0;
> >
> >  err_remove:
> > @@ -385,6 +413,8 @@ static int __init pgo_init(void)
> >  /* Remove debugfs entries. */
> >  static void __exit pgo_exit(void)
> >  {
> > +     prf_modules_exit();
> > +
> >       debugfs_remove_recursive(directory);
> >  }
> >
> > diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c
> > new file mode 100644
> > index 000000000000..0808d44227f1
> > --- /dev/null
> > +++ b/kernel/pgo/fs_mod.c
> > @@ -0,0 +1,415 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Jarmo Tiitto
> > + *
> > + * Author:
> > + *   Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > + *
> > + * Based on the clang PGO kernel patch by:
> > + *  Sami Tolvanen <samitolvanen@google.com>
> > + *
> > + * This software is licensed under the terms of the GNU General Public
> > + * License version 2, as published by the Free Software Foundation, and
> > + * may be copied, distributed, and modified under those terms.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#define pr_fmt(fmt)  "pgo: " fmt
> > +
> > +#include <linux/kernel.h>
> > +#include <linux/debugfs.h>
> > +#include <linux/fs.h>
> > +#include <linux/module.h>
> > +#include <linux/slab.h>
> > +#include <linux/vmalloc.h>
> > +#include "pgo.h"
> > +
> > +/*
> > + * PGO profile data reporting for modules:
> > + * We maintain one debugfs pgo/<module>.profraw file per module.
> > + */
> > +
> > +
> > +DEFINE_MUTEX(prf_mod_lock);
> > +LIST_HEAD(prf_mod_list);
> > +
> > +struct prf_mod_data {
> > +     void *buffer;
> > +     unsigned long size;
> > +};
> > +
> > +/* these are trivial, but each one differs a bit */
> > +static inline unsigned long prf_mod_data_size(struct module *mod)
> > +{
> > +     return mod->prf_data_size;
> > +}
> > +
> > +static inline unsigned long prf_mod_data_count(struct module *mod)
> > +{
> > +     return mod->prf_data_size / sizeof(struct llvm_prf_data);
> > +}
> > +
> > +static inline unsigned long prf_mod_cnts_size(struct module *mod)
> > +{
> > +     return mod->prf_cnts_num * sizeof(mod->prf_cnts[0]);
> > +}
> > +
> > +static inline unsigned long prf_mod_cnts_count(struct module *mod)
> > +{
> > +     return mod->prf_cnts_num;
> > +}
> > +
> > +static inline unsigned long prf_mod_names_size(struct module *mod)
> > +{
> > +     return mod->prf_names_num * sizeof(mod->prf_names[0]);
> > +}
> > +
> > +static inline unsigned long prf_mod_names_count(struct module *mod)
> > +{
> > +     return mod->prf_names_num;
> > +}
> > +
> > +static inline unsigned long prf_mod_vnds_size(struct module *mod)
> > +{
> > +     return mod->prf_vnds_size;
> > +}
> > +
> > +static inline unsigned long prf_mod_vnds_count(struct module *mod)
> > +{
> > +     return mod->prf_vnds_size / sizeof(struct llvm_prf_value_node);
> > +}
> > +
> > +/*
> > + * Raw profile data format:
> > + *
> > + *   - llvm_prf_header
> > + *   - __llvm_prf_data
> > + *   - __llvm_prf_cnts
> > + *   - __llvm_prf_names
> > + *   - zero padding to 8 bytes
> > + *   - for each llvm_prf_data in __llvm_prf_data:
> > + *           - llvm_prf_value_data
> > + *                   - llvm_prf_value_record + site count array
> > + *                           - llvm_prf_value_node_data
> > + *                           ...
> > + *                   ...
> > + *           ...
> > + */
> > +
> > +static void prf_module_fill_header(struct module *mod, void **buffer)
> > +{
> > +     struct llvm_prf_header *header = *(struct llvm_prf_header **)buffer;
> > +
> > +#ifdef CONFIG_64BIT
> > +     header->magic = LLVM_INSTR_PROF_RAW_MAGIC_64;
> > +#else
> > +     header->magic = LLVM_INSTR_PROF_RAW_MAGIC_32;
> > +#endif
> > +     header->version = LLVM_VARIANT_MASK_IR_PROF | LLVM_INSTR_PROF_RAW_VERSION;
> > +     header->data_size = prf_mod_data_count(mod);
> > +     header->padding_bytes_before_counters = 0;
> > +     header->counters_size = prf_mod_cnts_count(mod);
> > +     header->padding_bytes_after_counters = 0;
> > +     header->names_size = prf_mod_names_count(mod);
> > +     header->counters_delta = (u64)mod->prf_cnts;
> > +     header->names_delta = (u64)mod->prf_names;
> > +     header->value_kind_last = LLVM_INSTR_PROF_IPVK_LAST;
> > +
> > +     *buffer += sizeof(*header);
> > +}
> > +
> > +/*
> > + * Copy the source into the buffer, incrementing the pointer into buffer in the
> > + * process.
> > + */
> > +static void prf_copy_to_buffer(void **buffer, const void *src, unsigned long size)
> > +{
> > +     memcpy(*buffer, src, size);
> > +     *buffer += size;
> > +}
> > +
> > +/* extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds) */
> > +
> > +static u32 prf_module_get_value_size(struct module *mod)
> > +{
> > +     u32 size = 0;
> > +     struct llvm_prf_data *p;
> > +     struct llvm_prf_data *start = mod->prf_data;
> > +     struct llvm_prf_data *end = start + prf_mod_data_count(mod);
> > +
> > +     for (p = start; p < end; p++)
> > +             size += __prf_get_value_size(p, NULL);
> > +
> > +     return size;
> > +}
> > +
> > +/* Serialize the profiling's value.
> > + * extern void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
> > + */
> > +
> > +static void prf_module_serialize_values(struct module *mod, void **buffer)
> > +{
> > +     struct llvm_prf_data *p;
> > +     struct llvm_prf_data *start = mod->prf_data;
> > +     struct llvm_prf_data *end = start + prf_mod_data_count(mod);
> > +
> > +     for (p = start; p < end; p++)
> > +             prf_serialize_value(p, buffer);
> > +}
> > +
> > +static inline unsigned long prf_get_padding(unsigned long size)
> > +{
> > +     return 7 & (sizeof(u64) - size % sizeof(u64));
> > +}
> > +
> > +static unsigned long prf_module_buffer_size(struct module *mod)
> > +{
> > +     return sizeof(struct llvm_prf_header) +
> > +                     prf_mod_data_size(mod)  +
> > +                     prf_mod_cnts_size(mod) +
> > +                     prf_mod_names_size(mod) +
> > +                     prf_get_padding(prf_mod_names_size(mod)) +
> > +                     prf_module_get_value_size(mod);
> > +}
> > +
> > +/*
> > + * Serialize the profiling data into a format LLVM's tools can understand.
> > + * Note: caller *must* hold pgo_lock and hold reference to the module.
> > + */
> > +static int prf_module_serialize(struct module *mod, struct prf_mod_data *p, unsigned long *buf_size)
> > +{
> > +     int err = 0;
> > +     void *buffer;
> > +
> > +     /* re-check buffer size */
> > +     *buf_size = prf_module_buffer_size(mod);
> > +
> > +     if (p->size < *buf_size || !p->buffer) {
> > +             err = -ENOMEM;
> > +             goto out;
> > +     }
> > +
> > +     buffer = p->buffer;
> > +
> > +     prf_module_fill_header(mod, &buffer);
> > +     prf_copy_to_buffer(&buffer, mod->prf_data,  prf_mod_data_size(mod));
> > +     prf_copy_to_buffer(&buffer, mod->prf_cnts,  prf_mod_cnts_size(mod));
> > +     prf_copy_to_buffer(&buffer, mod->prf_names, prf_mod_names_size(mod));
> > +     buffer += prf_get_padding(prf_mod_names_size(mod));
> > +
> > +     prf_module_serialize_values(mod, &buffer);
> > +
> > +out:
> > +     return err;
> > +}
> > +
> > +/* open() implementation for module PGO. */
> > +static int prf_module_open(struct inode *inode, struct file *file)
> > +{
> > +     struct prf_mod_private_data *data;
> > +     struct prf_mod_data *pinfo;
> > +     struct module *mod;
> > +     unsigned long flags;
> > +     unsigned long buf_size = 0;
> > +     int err = 0;
> > +
> > +     mutex_lock(&prf_mod_lock);
> > +     data = inode->i_private; /* see: pgo_module_notifier() */
> > +
> > +     BUG_ON(!data);
> > +
> > +     /* grab the module */
> > +     mod = READ_ONCE(data->mod);
> > +     if (mod && try_module_get(mod)) {
> > +             // Is it live?
> > +             if (mod->state != MODULE_STATE_LIVE) {
> > +                     err = -EAGAIN;
> > +                     goto put_unlock;
> > +             }
> > +
> > +             pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
> > +             if (!pinfo) {
> > +                     err = -ENOMEM;
> > +                     goto put_unlock;
> > +             }
> > +
> > +             mutex_unlock(&prf_mod_lock);
> > +
> > +             /* estimate amount of memory needed:
> > +              * can't vzalloc() while prf_lock() is held
> > +              * and prf_module_buffer_size() only works while it is held..
> > +              */
> > +             flags = prf_lock();
> > +             buf_size = prf_module_buffer_size(mod);
> > +             do {
> > +                     prf_unlock(flags);
> > +
> > +                     /* resize buffer */
> > +                     if (pinfo->size < buf_size && pinfo->buffer) {
> > +                             vfree(pinfo->buffer);
> > +                             pinfo->buffer = NULL;
> > +                     }
> > +
> > +                     if (!pinfo->buffer) {
> > +                             pinfo->size = buf_size;
> > +                             pinfo->buffer = vzalloc(pinfo->size);
> > +
> > +                             if (!pinfo->buffer) {
> > +                                     err = -ENOMEM;
> > +                                     goto out;
> > +                             }
> > +                     }
> > +
> > +                     /* try serialize */
> > +                     flags = prf_lock();
> > +
> > +             } while (prf_module_serialize(mod, pinfo, &buf_size));
> > +
> > +             prf_unlock(flags);
> > +
> > +             /* success! */
> > +             pinfo->size = buf_size;
> > +             file->private_data = pinfo;
> > +
> > +             module_put(mod);
> > +             return err;
> > +     }
> > +
> > +put_unlock:
> > +     module_put(mod);
> > +     mutex_unlock(&prf_mod_lock);
> > +out:
> > +     return err;
> > +}
> > +
> > +/* read() implementation for PGO. */
> > +static ssize_t prf_module_read(struct file *file, char __user *buf, size_t count,
> > +                     loff_t *ppos)
> > +{
> > +     struct prf_mod_data *pinfo = file->private_data;
> > +
> > +     BUG_ON(!pinfo);
> > +
> > +     return simple_read_from_buffer(buf, count, ppos, pinfo->buffer,
> > +                                        pinfo->size);
> > +}
> > +
> > +/* release() implementation for PGO. Release resources allocated by open(). */
> > +static int prf_module_release(struct inode *inode, struct file *file)
> > +{
> > +     struct prf_mod_data *pinfo = file->private_data;
> > +
> > +     if (pinfo) {
> > +             vfree(pinfo->buffer);
> > +             kfree(pinfo);
> > +             file->private_data = 0;
> > +     }
> > +     return 0;
> > +}
> > +
> > +static const struct file_operations prf_mod_fops = {
> > +     .owner          = THIS_MODULE,
> > +     .open           = prf_module_open,
> > +     .read           = prf_module_read,
> > +     .llseek         = default_llseek,
> > +     .release        = prf_module_release
> > +};
> > +
> > +static void prf_module_free(struct rcu_head *rcu)
> > +{
> > +     struct prf_mod_private_data *data;
> > +
> > +     data = container_of(rcu, struct prf_mod_private_data, rcu);
> > +
> > +     debugfs_remove(data->file);
> > +
> > +     kfree(data);
> > +}
> > +
> > +static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
> > +                             void *pdata)
> > +{
> > +     struct module *mod = pdata;
> > +     struct prf_mod_private_data *data;
> > +     char fsname[MODULE_NAME_LEN + 9]; // +strlen(".profraw")
> > +
> > +     if (event == MODULE_STATE_LIVE) {
> > +             /* does the module have profiling info? */
> > +             if (mod->prf_data
> > +                       && mod->prf_cnts
> > +                       && mod->prf_names
> > +                       && mod->prf_vnds) {
> > +                     /* add module prf_mod_private_data entry */
> > +                     data = kzalloc(sizeof(*data), GFP_KERNEL);
> > +
> > +                     fsname[0] = 0;
> > +                     snprintf(fsname, sizeof(fsname), "%s.profraw", mod->name);
> > +
> > +                     mutex_lock(&prf_mod_lock);
> > +
> > +                     data->file = debugfs_create_file(fsname, 0600, directory, data, &prf_mod_fops);
> > +                     if (!data->file) {
> > +                             pr_err("Failed setup module pgo: %s", fsname);
> > +                             kfree(data);
> > +                             mutex_unlock(&prf_mod_lock);
> > +                             return NOTIFY_OK;
> > +                     }
> > +
> > +                     WRITE_ONCE(data->mod, mod);
> > +
> > +                     list_add_tail_rcu(&data->link, &prf_mod_list);
> > +                     mutex_unlock(&prf_mod_lock);
> > +             }
> > +     }
> > +     if (event == MODULE_STATE_GOING) {
> > +             /* remove module from the list */
> > +             rcu_read_lock();
> > +             list_for_each_entry_rcu(data, &prf_mod_list, link) {
> > +                     if (strcmp(data->mod->name, mod->name) == 0) {
> > +
> > +                             mutex_lock(&prf_mod_lock);
> > +                             /* remofe from profiled modules */
> > +                             list_del_rcu(&data->link);
> > +                             /* mark it stale */
> > +                             WRITE_ONCE(data->mod, NULL);
> > +                             mutex_unlock(&prf_mod_lock);
> > +                             call_rcu(&data->rcu, prf_module_free);
> > +                             break;
> > +                     }
> > +             }
> > +             rcu_read_unlock();
> > +     }
> > +
> > +     return NOTIFY_OK;
> > +}
> > +
> > +static struct notifier_block pgo_module_nb = {
> > +     .notifier_call = pgo_module_notifier
> > +};
> > +
> > +void prf_modules_init(void)
> > +{
> > +     register_module_notifier(&pgo_module_nb);
> > +}
> > +
> > +void prf_modules_exit(void)
> > +{
> > +     struct prf_mod_private_data *p;
> > +
> > +     /* unsubscribe the notifier and do cleanup. */
> > +     unregister_module_notifier(&pgo_module_nb);
> > +
> > +     rcu_read_lock();
> > +     list_for_each_entry_rcu(p, &prf_mod_list, link) {
> > +             /* delete nodes */
> > +             list_del(&p->link);
> > +             WRITE_ONCE(p->mod, NULL);
> > +             call_rcu(&p->rcu, prf_module_free);
> > +     }
> > +     rcu_read_unlock();
> > +}
> > \ No newline at end of file
> > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > index 464b3bc77431..98cfa11a7b76 100644
> > --- a/kernel/pgo/instrument.c
> > +++ b/kernel/pgo/instrument.c
> > @@ -139,11 +139,11 @@ EXPORT_SYMBOL(__llvm_profile_instrument_target);
> >
> >  /* Counts the number of times a range of targets values are seen. */
> >  void __llvm_profile_instrument_range(u64 target_value, void *data,
> > -                                  u32 index, s64 precise_start,
> > -                                  s64 precise_last, s64 large_value);
> > +                                      u32 index, s64 precise_start,
> > +                                      s64 precise_last, s64 large_value);
> >  void __llvm_profile_instrument_range(u64 target_value, void *data,
> > -                                  u32 index, s64 precise_start,
> > -                                  s64 precise_last, s64 large_value)
> > +                                      u32 index, s64 precise_start,
> > +                                      s64 precise_last, s64 large_value)
> >  {
> >       if (large_value != S64_MIN && (s64)target_value >= large_value)
> >               target_value = large_value;
> > @@ -176,9 +176,9 @@ static u64 inst_prof_get_range_rep_value(u64 value)
> >   * defined in compiler-rt/include/profile/InstrProfData.inc.
> >   */
> >  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > -                                  u32 counter_index);
> > +                                      u32 counter_index);
> >  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> > -                                  u32 counter_index)
> > +                                      u32 counter_index)
> >  {
> >       u64 rep_value;
> >
> > diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> > index a9ff51abbfd5..2840da63c7cd 100644
> > --- a/kernel/pgo/pgo.h
> > +++ b/kernel/pgo/pgo.h
> > @@ -212,17 +212,13 @@ struct prf_mod_private_data {
> >       struct list_head link;
> >       struct rcu_head rcu;
> >
> > -     void *buffer;
> > -     unsigned long size;
> > -
> > -     char mod_name[MODULE_NAME_LEN];
> >       struct module *mod;
> >       struct dentry *file;
> >
> >       int current_node;
> >  };
> >
> > -/* Mutex protecting the prf_mod_list and entries */
> > +/* Mutex protecting the prf_mod_list */
> >  extern struct mutex prf_mod_lock;
> >
> >  /* List of modules profiled */
> > @@ -231,10 +227,7 @@ extern struct list_head prf_mod_list;
> >  extern void prf_modules_init(void);
> >  extern void prf_modules_exit(void);
> >
> > -/* Update each modules snapshot of the profiling data. */
> > -extern int prf_modules_snapshot(void);
> > -
> > -/* below funcs are required by prf_modules_snapshot() */
> > +/* below funcs are required by prf_modules */
> >  extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds);
> >
> >  extern void prf_serialize_value(struct llvm_prf_data *p, void **buffer);
> > --
> > 2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXtisfabaiVP6y_3sjGsM7cQmPhur8Zqor4qkGrbiXpBA%40mail.gmail.com.

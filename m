Return-Path: <clang-built-linux+bncBDYJPJO25UGBB76M77VQKGQEKETT2XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABA8B4151
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 21:46:09 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 74sf469063oie.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568663168; cv=pass;
        d=google.com; s=arc-20160816;
        b=JyJbnjZdwnEOa2KlNJZRJFp2V+9DWwgWRT0pWKSDWSLIQWVSO/6fuqJbmWe4gO2EUy
         2I9Pq9EJYlIhUlaUPR5ekIhWrAcUiDAYy4cttmGxSl6zngooTEukpFBlEniD/g0HxdZU
         F5dlrIS9DwMPthFTCfnna23PyMJ0HE7iXfd5ZBbzfMub1PjS3bhCiCSAXWz0YvmjSvmX
         KY4OBTPabnXRHpGsymSvpaScEAlDjj7ZCqYTspmOZHbcZHK6OXvhOttpw9atnENM07Ed
         MGZoP4DWnabs5jujqGSAza5tT2VAMn5cwIzKg4cHkEqfb6u9VJU8Ztc3TGvX6Zsmgbr/
         nKag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XP9YW/nJym9nfIWpAHqyEVqF1vaW99dzh7AxsZVoezI=;
        b=A5Fv1XT4Gx9c9Cfuzy3002/6Gjc2ieEXZWPEHB2zXt0UHEZ15wXvz7DwrmbeFC76sN
         YSEpM2AKlx+Cv+o6MNoEZGBEn31tRs4sZqt275B8dT4hzy0WLv2Cjv4J0hkF1DTI47m5
         EMN092MxQuda0+DOpebKoJBsT/vATrDyyx7zEh7hGU8q0QGk9686cPNUr27TzQGSOLoN
         xBPq6rBngR4l/vCJXh4H2ss5n8D4vY8fybT337zMOmx+2cJq7oHQYYEpZkPRMIR5bfFZ
         NATcdQdIcTlMVryyr+oVJiFHJVkGA4iw/4qJ8oVXH1cIbMnsx4J8zCLpX/4b7yFyYAMF
         7jQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tsy6/lkF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XP9YW/nJym9nfIWpAHqyEVqF1vaW99dzh7AxsZVoezI=;
        b=MD/huQKeCNLjqONgwBp6KUBOImP3KnSbCn73lwGUV90D2Guaif/eKH7iqRhHjgt7Ta
         4eV3i+uzOJ88Ht0U31Q3WkpTfAfnGCpj2KuO6Wv3iwpnc1pAykB26cJtkfIq2Bk6zWJZ
         1MfFDg9OluKf1IsPwYL94JFaTRbtIx2ja0Ms5nVTz7yNkvBcsQ0G8MtmwPdqHzoW9aOB
         T3pailbuZUzkc/+we7DLbhgddA0ggIQ4pN9TCoUyGrvvcoHgDGywURdg+WoYokwlN/c0
         t19KKQsW5/v7pi2j98X8wfLt/RvGKE4Ax27+F+M64FqMvhs0iNEr4aLxLvGDgZlIhxqo
         tWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XP9YW/nJym9nfIWpAHqyEVqF1vaW99dzh7AxsZVoezI=;
        b=V5tCorhQBJzrMDJwneCAc+eE/ZgUthIfQevJOUuwZGADjJwgE6GG3NA3R1HUXGTOxv
         OmuTyQJGt4bzV6og1okFoJ2aqZVc26NcW72b7LhytGKPgmWr4M2fV6sXVnKD042npnvH
         4pkWVrilEQi58MtGCID9kTZCfgMAMVBYSa3WCeUVFtUvSXG5ybcceRGRkRygGfsT/1FV
         F6tTDTjDoZwUM3DYaEnddSDIEUNZxJjwv1sVQzT/RJPTGrEd/lShgZJPriTyO2vZM99G
         uHUOhxWWlb9gtBAwd3quKF5KLPe5+1B/YNLgePYmUwZEkEVVh+YVezg0/kxH/9pvKMQg
         vsdg==
X-Gm-Message-State: APjAAAViKyT6g2AN9Wged+enL1uoT6OgXZdDjxz+TbCKsun0swL6XVyJ
	i2dW+ei4/Dt96CjF1A4ZmL0=
X-Google-Smtp-Source: APXvYqybH2roLTXmpb6LOdDwTnRkYBpUfnmltejvEwTY2OLYzoNdKF+dKZ29p8L2Jx8EglUv4bmZzw==
X-Received: by 2002:aca:5252:: with SMTP id g79mr834870oib.72.1568663167770;
        Mon, 16 Sep 2019 12:46:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2963:: with SMTP id d90ls210005otb.12.gmail; Mon, 16 Sep
 2019 12:46:07 -0700 (PDT)
X-Received: by 2002:a05:6830:1090:: with SMTP id y16mr780830oto.46.1568663167522;
        Mon, 16 Sep 2019 12:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568663167; cv=none;
        d=google.com; s=arc-20160816;
        b=WjCLoG1oNSON4e7ZQn+RQID4u7cncTHDbZEa4UYsarMhbsEo4SBOAB1WqL5bKzxCsN
         Zy/W/PassQO8uLbif2nJb1qHubFjEfj3pn41T/icrkZhA5FjVz7df8MEKJqD3GZMM2OG
         APWqyFMrSxfNCmkp5xDJlnNIMP5FfZpZ71Fu9KD5/Hqn8WkkxmpJnGd90H0rXqpL/L4B
         +JqI9cN/ltoRp/zx2RcuOMCeO08a0u/Nl6AAJP6cHLDcm5KWo8Bs+G3MUcUn/pMYdCkB
         W3ijajOMIQ5FxGSJ/vkpkWSFmrcYlhp41mKQTMd22bhbgN2ej7dYIEiNX670T9gZKgBE
         T3BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tpc27TVoQdolh3GVcSXdbT0CgJJTTA8d6G+12e/VeMI=;
        b=c4QnKLLT0Q4BgaD7BcXGWm0w2JtYLjB+y/c/L/4Njr/IsBysTiBQuPkZbOMsVWYaCr
         aFq+bxf2E1e1y7pqEW0fXIv2aDJqclIv5PJrqzmYg/kjNyVLSLOK537+uQv/HFvFy1DM
         mlAWN+GHbaMT5wdxMZk6hhY7fuQ9s+lD+w6/Ibkzwx8kOpWXmMGwV9J7JjI2J2X6xIpi
         RHbPEiuio8emJKgY5UUCdyiy8tohHxwGERLRsOpEjCUSgFfkjcqQXK476G2Ylw55Y1HZ
         pVpNaQwMLdgrQsZP1MGIHn1aTQuC6Vvy+lrkzpPrXSHYkWNpj/f3mNewiLjHKrTHTGgd
         fLsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tsy6/lkF";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w8si32730otb.5.2019.09.16.12.46.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 12:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d3so373404plr.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 12:46:07 -0700 (PDT)
X-Received: by 2002:a17:902:bb87:: with SMTP id m7mr1509760pls.179.1568663166308;
 Mon, 16 Sep 2019 12:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
 <CAKwvOdn6bMGZFAwH8iS5xD+Ce7oV8U6Fgi_SrFpCjo2-1hEUrw@mail.gmail.com> <a8290101e2720cac8b06613ec4cb91ffbfd69f05.camel@perches.com>
In-Reply-To: <a8290101e2720cac8b06613ec4cb91ffbfd69f05.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 12:45:55 -0700
Message-ID: <CAKwvOd=uzQJ_098ua5VuUuDaWqGQHncED4WWjNwNS0-CdE5mfw@mail.gmail.com>
Subject: Re: [rfc patch script] treewide conversion of __section(foo) to section("foo");
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000cd67da0592b0dab3"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Tsy6/lkF";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

--000000000000cd67da0592b0dab3
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 12, 2019 at 4:50 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-09-12 at 15:45 -0700, Nick Desaulniers wrote:
> > If you want to email me just the patch file (so I don't have to
> > copy+pasta from an email),
>
> Lazy... ;)

Says the Perl programmer...http://threevirtues.com/ ;)

>
> > I'd be happy to apply it and compile+boot test a few more arch's
> > than x86.

Looks like arm defconfig has an error:

arch/arm/mach-omap2/omap-wakeupgen.c:634:1: error: expected ';' after
top level declarator
./include/linux/irqchip.h:27:43: note: expanded from macro 'IRQCHIP_DECLARE'
#define IRQCHIP_DECLARE(name, compat, fn) OF_DECLARE_2(irqchip, name,
compat, fn)
                                          ^
./include/linux/of.h:1304:3: note: expanded from macro 'OF_DECLARE_2'
                _OF_DECLARE(table, name, compat, fn, of_init_fn_2)
                ^
./include/linux/of.h:1284:10: note: expanded from macro '_OF_DECLARE'
                __used __section("__" ## table ## "_of_table")          \
                       ^
./include/linux/compiler_attributes.h:232:77: note: expanded from
macro '__section'
#define __section(section)              __attribute__((__section__(section)))
                                                                            ^


and

drivers/clocksource/timer-atmel-pit.c:263:1: error: pasting formed
'"__"timer', an invalid preprocessing token
TIMER_OF_DECLARE(at91sam926x_pit, "atmel,at91sam9260-pit",
^
./include/linux/clocksource.h:263:2: note: expanded from macro
'TIMER_OF_DECLARE'
        OF_DECLARE_1_RET(timer, name, compat, fn)
        ^
./include/linux/of.h:1302:3: note: expanded from macro 'OF_DECLARE_1_RET'
                _OF_DECLARE(table, name, compat, fn, of_init_fn_1_ret)
                ^
./include/linux/of.h:1284:25: note: expanded from macro '_OF_DECLARE'
                __used __section("__" ## table ## "_of_table")          \
                                      ^



and modpost is broken:
drivers/cpufreq/cpufreq_conservative.mod.c:12:11: error: expected expression
__section(.gnu.linkonce.this_module) = {
          ^
1 error generated.




arm64 then had this issue:
drivers/clocksource/arm_arch_timer.c:1624:1: error: expected ';' after
top level declarator
./include/linux/clocksource.h:272:2: note: expanded from macro
'TIMER_ACPI_DECLARE'
        ACPI_DECLARE_PROBE_ENTRY(timer, name, table_id, 0, NULL, 0, fn)
        ^
./include/linux/acpi.h:1097:10: note: expanded from macro
'ACPI_DECLARE_PROBE_ENTRY'
                __used __section("__" ## table ## "_acpi_probe_table")  \
                       ^
./include/linux/compiler_attributes.h:232:77: note: expanded from
macro '__section'
#define __section(section)              __attribute__((__section__(section)))
                                                                            ^


Same problem (token pasting then concatenation of strings).


diff --git a/drivers/thermal/thermal_core.h b/drivers/thermal/thermal_core.h
index 1b7cda17c34e..71844dbc963b 100644
--- a/drivers/thermal/thermal_core.h
+++ b/drivers/thermal/thermal_core.h
@@ -21,7 +21,7 @@ extern struct thermal_governor
*__governor_thermal_table_end[];

 #define THERMAL_TABLE_ENTRY(table, name) \
  static typeof(name) *__thermal_table_entry_##name \
- __used __section("__" ## table ## "_thermal_table") = &name
+ __used __section("__" #table "_thermal_table") = &name

 #define THERMAL_GOVERNOR_DECLARE(name) THERMAL_TABLE_ENTRY(governor, name)

diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 24c1293d8717..5013725cdb92 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1094,7 +1094,7 @@ struct acpi_probe_entry {

 #define ACPI_DECLARE_PROBE_ENTRY(table, name, table_id, subtable,
valid, data, fn) \
  static const struct acpi_probe_entry __acpi_probe_##name \
- __used __section("__" ## table ## "_acpi_probe_table") \
+ __used __section("__" #table "_acpi_probe_table") \
  = { \
  .id = table_id, \
  .type = subtable, \
diff --git a/include/linux/of.h b/include/linux/of.h
index 71e74771ce35..b2459fc411cf 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1281,7 +1281,7 @@ static inline int
of_get_available_child_count(const struct device_node *np)
 #if defined(CONFIG_OF) && !defined(MODULE)
 #define _OF_DECLARE(table, name, compat, fn, fn_type) \
  static const struct of_device_id __of_table_##name \
- __used __section("__" ## table ## "_of_table") \
+ __used __section("__" #table "_of_table") \
  = { .compatible = compat, \
       .data = (fn == (fn_type)NULL) ? fn : fn  }
 #else
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 820eed87fb43..f2c70d1d5a2a 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2176,7 +2176,7 @@ static void add_header(struct buffer *b, struct
module *mod)
  buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
  buf_printf(b, "\n");
  buf_printf(b, "__visible struct module __this_module\n");
- buf_printf(b, "__section(.gnu.linkonce.this_module) = {\n");
+ buf_printf(b, "__section(\".gnu.linkonce.this_module\") = {\n");
  buf_printf(b, "\t.name = KBUILD_MODNAME,\n");
  if (mod->has_init)
  buf_printf(b, "\t.init = init_module,\n");

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DuzQJ_098ua5VuUuDaWqGQHncED4WWjNwNS0-CdE5mfw%40mail.gmail.com.

--000000000000cd67da0592b0dab3
Content-Type: text/plain; charset="US-ASCII"; name="patch.txt"
Content-Disposition: attachment; filename="patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k0mtb15y0>
X-Attachment-Id: f_k0mtb15y0

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuaCBiL2RyaXZlcnMvdGhl
cm1hbC90aGVybWFsX2NvcmUuaAppbmRleCAxYjdjZGExN2MzNGUuLjcxODQ0ZGJjOTYzYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy90aGVybWFsL3RoZXJtYWxfY29yZS5oCisrKyBiL2RyaXZlcnMvdGhl
cm1hbC90aGVybWFsX2NvcmUuaApAQCAtMjEsNyArMjEsNyBAQCBleHRlcm4gc3RydWN0IHRoZXJt
YWxfZ292ZXJub3IgKl9fZ292ZXJub3JfdGhlcm1hbF90YWJsZV9lbmRbXTsKIAogI2RlZmluZSBU
SEVSTUFMX1RBQkxFX0VOVFJZKHRhYmxlLCBuYW1lKQkJCVwKIAlzdGF0aWMgdHlwZW9mKG5hbWUp
ICpfX3RoZXJtYWxfdGFibGVfZW50cnlfIyNuYW1lCVwKLQlfX3VzZWQgX19zZWN0aW9uKCJfXyIg
IyMgdGFibGUgIyMgIl90aGVybWFsX3RhYmxlIikgPSAmbmFtZQorCV9fdXNlZCBfX3NlY3Rpb24o
Il9fIiAjdGFibGUgIl90aGVybWFsX3RhYmxlIikgPSAmbmFtZQogCiAjZGVmaW5lIFRIRVJNQUxf
R09WRVJOT1JfREVDTEFSRShuYW1lKQlUSEVSTUFMX1RBQkxFX0VOVFJZKGdvdmVybm9yLCBuYW1l
KQogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L29mLmggYi9pbmNsdWRlL2xpbnV4L29mLmgK
aW5kZXggNzFlNzQ3NzFjZTM1Li5iMjQ1OWZjNDExY2YgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvb2YuaAorKysgYi9pbmNsdWRlL2xpbnV4L29mLmgKQEAgLTEyODEsNyArMTI4MSw3IEBAIHN0
YXRpYyBpbmxpbmUgaW50IG9mX2dldF9hdmFpbGFibGVfY2hpbGRfY291bnQoY29uc3Qgc3RydWN0
IGRldmljZV9ub2RlICpucCkKICNpZiBkZWZpbmVkKENPTkZJR19PRikgJiYgIWRlZmluZWQoTU9E
VUxFKQogI2RlZmluZSBfT0ZfREVDTEFSRSh0YWJsZSwgbmFtZSwgY29tcGF0LCBmbiwgZm5fdHlw
ZSkJCQlcCiAJc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgX19vZl90YWJsZV8jI25h
bWUJCVwKLQkJX191c2VkIF9fc2VjdGlvbigiX18iICMjIHRhYmxlICMjICJfb2ZfdGFibGUiKQkJ
XAorCQlfX3VzZWQgX19zZWN0aW9uKCJfXyIgI3RhYmxlICJfb2ZfdGFibGUiKQkJXAogCQkgPSB7
IC5jb21wYXRpYmxlID0gY29tcGF0LAkJCQlcCiAJCSAgICAgLmRhdGEgPSAoZm4gPT0gKGZuX3R5
cGUpTlVMTCkgPyBmbiA6IGZuICB9CiAjZWxzZQpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9tb2QvbW9k
cG9zdC5jIGIvc2NyaXB0cy9tb2QvbW9kcG9zdC5jCmluZGV4IDgyMGVlZDg3ZmI0My4uZjJjNzBk
MWQ1YTJhIDEwMDY0NAotLS0gYS9zY3JpcHRzL21vZC9tb2Rwb3N0LmMKKysrIGIvc2NyaXB0cy9t
b2QvbW9kcG9zdC5jCkBAIC0yMTc2LDcgKzIxNzYsNyBAQCBzdGF0aWMgdm9pZCBhZGRfaGVhZGVy
KHN0cnVjdCBidWZmZXIgKmIsIHN0cnVjdCBtb2R1bGUgKm1vZCkKIAlidWZfcHJpbnRmKGIsICJN
T0RVTEVfSU5GTyhuYW1lLCBLQlVJTERfTU9ETkFNRSk7XG4iKTsKIAlidWZfcHJpbnRmKGIsICJc
biIpOwogCWJ1Zl9wcmludGYoYiwgIl9fdmlzaWJsZSBzdHJ1Y3QgbW9kdWxlIF9fdGhpc19tb2R1
bGVcbiIpOwotCWJ1Zl9wcmludGYoYiwgIl9fc2VjdGlvbiguZ251LmxpbmtvbmNlLnRoaXNfbW9k
dWxlKSA9IHtcbiIpOworCWJ1Zl9wcmludGYoYiwgIl9fc2VjdGlvbihcIi5nbnUubGlua29uY2Uu
dGhpc19tb2R1bGVcIikgPSB7XG4iKTsKIAlidWZfcHJpbnRmKGIsICJcdC5uYW1lID0gS0JVSUxE
X01PRE5BTUUsXG4iKTsKIAlpZiAobW9kLT5oYXNfaW5pdCkKIAkJYnVmX3ByaW50ZihiLCAiXHQu
aW5pdCA9IGluaXRfbW9kdWxlLFxuIik7Cg==
--000000000000cd67da0592b0dab3--
